import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'key_value_db.dart';
import 'key_value_db_provider.dart';
import 'settings.dart';

const bool _debug = !kReleaseMode && true;

class KeyValueDbListener {
  KeyValueDbListener(this.ref) {
    if (_debug) debugPrint('KeyValueDbListener: new instance');

    _init();
  }
  final Ref ref;

  void _init() {
    if (_debug) debugPrint('KeyValueDbListener: _init() setup listen');

    ref.listen<StateController<KeyValueDb>>(keyValueDbProvider.notifier,
        (StateController<KeyValueDb>? previous,
            StateController<KeyValueDb> current) async {
      if (_debug) {
        debugPrint('KeyValueDbListener: listen called - - - - -');
        debugPrint('  DB switch : ${current.state}');
      }

      final KeyValueDb keyValueDb = current.state;
      await keyValueDb.init();

      Settings.init(ref);
    });
  }
}

final Provider<KeyValueDbListener> keyValueDbListenerProvider =
    Provider<KeyValueDbListener>((ProviderRef<KeyValueDbListener> ref) {
  if (_debug) debugPrint('keyValueDbListenerProvider called');
  return KeyValueDbListener(ref);
});

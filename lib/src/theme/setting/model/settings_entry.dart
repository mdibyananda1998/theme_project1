import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/key_value_db.dart';
import '../controller/key_value_db_provider.dart';

class SettingsEntry<T> extends Notifier<T> {
  SettingsEntry({
    required this.key,
    required this.defaultValue,
  });

  final T defaultValue;

  final String key;

  @override
  T build() {
    state = defaultValue;
    init();
    return state;
  }

  void init() {
        final KeyValueDb db =  ref.read(keyValueDbProvider);


    final T newValue = db.get(key, defaultValue);

    if (state != newValue) state = newValue;
  }

  void set(T newValue) {
    if (state == newValue) return;
    state = newValue;
    final KeyValueDb db =  ref.read(keyValueDbProvider);
    unawaited(db.put(key, newValue));
  }

  void reset() {
    if (state == defaultValue) return;
    state = defaultValue;
        final KeyValueDb db =  ref.read(keyValueDbProvider);

    unawaited(db.put(key, defaultValue));
  }
}

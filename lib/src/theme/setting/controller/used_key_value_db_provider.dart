import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_db.dart';
import 'used_key_value_db.dart';

final StateProvider<UsedKeyValueDb> usedKeyValueDbProvider =
    StateProvider<UsedKeyValueDb>(
  (final StateProviderRef<UsedKeyValueDb> ref) => AppDb.keyValue,
  name: 'usedKeyValueDbProvider',
);

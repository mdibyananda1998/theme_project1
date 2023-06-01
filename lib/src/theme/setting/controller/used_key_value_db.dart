// ignore_for_file: unused_field

import '../../../constants/app_db.dart';
import 'key_value_db.dart';
import 'key_value_db_prefs.dart';

enum UsedKeyValueDb {
  memory(),
  sharedPreferences(),
  hive(AppDb.keyValueFilename); // Used filename for the Hive storage box.

  final String _filename;
  const UsedKeyValueDb([this._filename = '']);

  KeyValueDb get get {
    //  UsedKeyValueDb.sharedPreferences:
    return KeyValueDbPrefs();
  }

  String get describe {
    return 'Shared Preferences';
  }
}

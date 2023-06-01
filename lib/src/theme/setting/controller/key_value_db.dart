
abstract class KeyValueDb {
  Future<void> init();

  Future<void> dispose();

  T get<T>(String key, T defaultValue);

  Future<void> put<T>(String key, T value);
}

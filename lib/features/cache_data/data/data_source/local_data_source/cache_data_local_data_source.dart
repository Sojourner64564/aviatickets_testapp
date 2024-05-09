abstract class CacheDataLocalDataSource{
  Future<void> writeInt(String key, int value);
  Future<void> writeString(String key, String value);
  Future<void> writeBool(String key, bool value);
  Future<int?> readInt(String key);
  Future<String?> readString(String key);
  Future<bool?> readBool(String key);
}
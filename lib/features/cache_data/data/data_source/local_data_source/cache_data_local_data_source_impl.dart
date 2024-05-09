import 'package:aviatickets_testapp/features/cache_data/data/data_source/local_data_source/cache_data_client.dart';
import 'package:aviatickets_testapp/features/cache_data/data/data_source/local_data_source/cache_data_local_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CacheDataLocalDataSource)
class CacheDataLocalDataSourceImpl implements CacheDataLocalDataSource{
  final CacheDataClient cacheDataClient;

  CacheDataLocalDataSourceImpl(this.cacheDataClient);

  @override
  Future<void> writeBool(String key, bool value) async{
    final instance = await cacheDataClient.getSharedPreferencesInstance();
    instance.setBool(key, value);
    return;
  }

  @override
  Future<void> writeInt(String key, int value) async{
    final instance = await cacheDataClient.getSharedPreferencesInstance();
    instance.setInt(key, value);
    return;
  }

  @override
  Future<void> writeString(String key, String value) async{
    final instance = await cacheDataClient.getSharedPreferencesInstance();
    instance.setString(key, value);
    return;
  }

  @override
  Future<bool?> readBool(String key) async{
    final instance = await cacheDataClient.getSharedPreferencesInstance();
    final value = instance.getBool(key);
    return value;
  }

  @override
  Future<int?> readInt(String key) async{
    final instance = await cacheDataClient.getSharedPreferencesInstance();
    final value = instance.getInt(key);
    return value;
  }

  @override
  Future<String?> readString(String key) async{
    final instance = await cacheDataClient.getSharedPreferencesInstance();
    final value = instance.getString(key);
    return value;
  }

}
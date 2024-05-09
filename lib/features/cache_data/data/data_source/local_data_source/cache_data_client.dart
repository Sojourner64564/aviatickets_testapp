import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class CacheDataClient{
  Future<SharedPreferences> getSharedPreferencesInstance() async{
    return await SharedPreferences.getInstance();
  }
}
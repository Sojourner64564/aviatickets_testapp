import 'package:aviatickets_testapp/features/cache_data/data/data_source/local_data_source/cache_data_local_data_source.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetLastSearchWordController{
   TextEditingController textFirstEditingController = TextEditingController();
   TextEditingController textSecondEditingController = TextEditingController();
   final CacheDataLocalDataSource cacheDataLocalDataSource;

  GetLastSearchWordController(this.cacheDataLocalDataSource);

  Future<void> getLastWord() async{
    final firstString = await cacheDataLocalDataSource.readString('firstString');
    final secondString = await cacheDataLocalDataSource.readString('secondString');
    if(firstString != null){
      textFirstEditingController.text = firstString;
    }
    if(secondString != null){
      textSecondEditingController.text = secondString;
    }
  }
}
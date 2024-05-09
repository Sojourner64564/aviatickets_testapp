import 'package:aviatickets_testapp/features/cache_data/data/data_source/local_data_source/cache_data_local_data_source.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveLastSearchWordController{
  TextEditingController textFirstEditingController = TextEditingController();
  TextEditingController textSecondEditingController = TextEditingController();
  final CacheDataLocalDataSource cacheDataLocalDataSource;

  SaveLastSearchWordController(this.cacheDataLocalDataSource);

  Future<void> saveLastWord() async{
    cacheDataLocalDataSource.writeString('firstString', textFirstEditingController.text);
    cacheDataLocalDataSource.writeString('secondString', textSecondEditingController.text);

  }
}
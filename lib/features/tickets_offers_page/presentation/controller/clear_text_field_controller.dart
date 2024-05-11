import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClearTextFieldController{
  ClearTextFieldController();

  TextEditingController textSecondEditingController = TextEditingController();

  Future<void> clearTextField() async{
    textSecondEditingController.clear();
  }
}
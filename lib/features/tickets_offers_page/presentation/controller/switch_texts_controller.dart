import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SwitchTextsController{
  SwitchTextsController();
  TextEditingController textFirstEditingController = TextEditingController();
  TextEditingController textSecondEditingController = TextEditingController();

  void switchTextsField(){
    final firstText = textFirstEditingController.text;
    final secondText = textSecondEditingController.text;
    textFirstEditingController.text = secondText;
    textSecondEditingController.text = firstText;
  }
}
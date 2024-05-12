import 'package:aviatickets_testapp/core/injectable/injectable.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/presentation/controller/show_entire_route_controller.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/presentation/cubit/show_entire_route_cubit.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/controller/get_last_search_word_controller.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/controller/save_last_search_word_controller.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/controller/clear_text_field_controller.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/controller/switch_texts_controller.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TextFieldControllerManagerController{
  TextEditingController textFirstEditingController = TextEditingController();
  TextEditingController textSecondEditingController = TextEditingController();
  final getLastSearchWordController = getIt<GetLastSearchWordController>();
  final saveLastSearchWordController = getIt<SaveLastSearchWordController>();
  final clearTextFieldController = getIt<ClearTextFieldController>();
  final switchTextsController = getIt<SwitchTextsController>();
  final showEntireRouteController = getIt<ShowEntireRouteController>();
  final showEntireRouteCubit = getIt<ShowEntireRouteCubit>();

  void controllerOrcestrator(){
    // getLastSearchWordController.textFirstEditingController =
    //     textFirstEditingController;
    // getLastSearchWordController.textSecondEditingController =
    //     textSecondEditingController;
    // saveLastSearchWordController.textFirstEditingController =
    //     textFirstEditingController;
    // saveLastSearchWordController.textSecondEditingController =
    //     textSecondEditingController;
    // clearTextFieldController.textSecondEditingController =
    //     textSecondEditingController;
    // switchTextsController.textFirstEditingController =
    //     textFirstEditingController;
    // switchTextsController.textSecondEditingController =
    //     textSecondEditingController;
    // showEntireRouteCubit.textFirstEditingController = textFirstEditingController;
    // showEntireRouteCubit.textSecondEditingController = textSecondEditingController;
  }
}
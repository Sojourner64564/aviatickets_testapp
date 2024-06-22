import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'show_entire_route_state.dart';

@lazySingleton
class ShowEntireRouteCubit extends Cubit<ShowEntireRouteState> {
  ShowEntireRouteCubit() : super(ShowEntireRouteStateInitial());
  TextEditingController textFirstEditingController = TextEditingController();
  TextEditingController textSecondEditingController = TextEditingController();

  void viewEntire(){
    emit(ShowEntireRouteStateLoading());
    final firstText = textFirstEditingController.text;
    final secondText = textSecondEditingController.text;
    emit(ShowEntireRouteStateLoaded('$firstText - $secondText'));
  }
}

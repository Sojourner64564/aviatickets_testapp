import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/main_page/main_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainGrey,
      body: MainPage(),
    );
  }

}
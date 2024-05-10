import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/filters_screen/filters_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FilterScreen extends StatelessWidget{
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainGrey,
      body: FilterPage(),
    );
  }

}
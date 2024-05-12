import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/presentation/all_tickets_screen/all_tickets_page.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/presentation/widget/floating_action_button_filters_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AllTicketsScreen extends StatelessWidget{
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGrey,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatingActionButtonFiltersWidget(),
      body: AllTicketsPage(),
    );
  }

}
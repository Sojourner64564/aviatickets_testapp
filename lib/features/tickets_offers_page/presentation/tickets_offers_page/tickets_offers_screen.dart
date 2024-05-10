import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/tickets_offers_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TicketsOffersScreen extends StatelessWidget{
  const TicketsOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    backgroundColor: AppColors.mainGrey,
    body: TicketsOffersPage(),
    );
  }

}
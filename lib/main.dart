import 'package:aviatickets_testapp/core/injectable/injectable.dart';
import 'package:aviatickets_testapp/core/route/route.dart';
import 'package:aviatickets_testapp/features/common/presentation/auto_tab_scaffold_screen/auto_tab_scaffold_screen.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}


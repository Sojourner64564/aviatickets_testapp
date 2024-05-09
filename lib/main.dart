import 'package:aviatickets_testapp/core/injectable/injectable.dart';
import 'package:aviatickets_testapp/core/route/route.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}
//TODO сделать сплеш колор на кнопки
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}


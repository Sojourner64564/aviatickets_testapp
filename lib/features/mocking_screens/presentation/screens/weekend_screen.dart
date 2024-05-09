import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WeekendScreen extends StatelessWidget {
  const WeekendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text('WeekendScreen'),
        ),
      ),
    );
  }
}

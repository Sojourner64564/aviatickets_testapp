import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HardRoutesScreen extends StatelessWidget {
  const HardRoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text('HardRoutesScreen'),
        ),
      ),
    );
  }
}

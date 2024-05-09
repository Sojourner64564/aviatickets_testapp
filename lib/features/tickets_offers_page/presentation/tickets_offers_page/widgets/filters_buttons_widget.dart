import 'package:flutter/material.dart';

class FiltersButtonsWidget extends StatelessWidget{
  const FiltersButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
        height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(children: [
            Icon(Icons.add),
            Text('обратно'),
          ],),
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(children: [
            Icon(Icons.add),
            Text('обратно'),
          ],),
        ),
      ],
    );
  }

}
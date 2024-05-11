import 'package:flutter/material.dart';

class TicketTileWidget extends StatelessWidget{
  const TicketTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(width: double.infinity, height: 30, color: Colors.red,),
    );
  }

}
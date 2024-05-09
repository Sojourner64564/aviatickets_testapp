import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class BlueButtonAllTicketsWidget extends StatelessWidget{
  const BlueButtonAllTicketsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.blue,
      ),
      child: const Center(
        child: Text(
          'Посмотреть все билеты',
          style: AppTextStyles.whiteItalicButtonText1,
        ),
      ),
    );
  }

}
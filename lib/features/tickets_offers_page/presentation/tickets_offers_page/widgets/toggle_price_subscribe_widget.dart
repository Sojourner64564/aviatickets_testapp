import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TogglePriceSubscribeWidget extends StatelessWidget{
  const TogglePriceSubscribeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.grey3,
      ),
      child: Row(children: [
        SizedBox(
          width: 20,
          height: 20,
          child: SvgPicture.asset(
            'assets/icons/bell.svg',
            color: AppColors.blue,
          ),
        ),
        const SizedBox(width: 10),
        Text('Подписка на цену',
        style: AppTextStyles.text1,
        )
      ],)
    );
  }

}
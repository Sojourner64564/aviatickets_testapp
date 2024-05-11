import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TogglePriceSubscribeWidget extends StatefulWidget{
  const TogglePriceSubscribeWidget({super.key});

  @override
  State<TogglePriceSubscribeWidget> createState() => _TogglePriceSubscribeWidgetState();
}

class _TogglePriceSubscribeWidgetState extends State<TogglePriceSubscribeWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.grey3,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
          const Text('Подписка на цену',
          style: AppTextStyles.text1,
          ),
          const Spacer(),
          Switch(
            activeColor: AppColors.blue,
              value: isSwitched, onChanged: (value){
              setState(() {
                isSwitched = value;
              });
          }),
        ],),
      )
    );
  }
}
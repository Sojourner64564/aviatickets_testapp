import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColoredButtonsWidget extends StatelessWidget{
  const ColoredButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 80,
          height: 100,
          child: Column(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.green,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    'assets/icons/roads.svg',
                    color: AppColors.white,

                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Сложный',
                style: AppTextStyles.text3,
              ),
              const Text(
                'маршрут',
                style: AppTextStyles.text3,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 80,
          height: 100,
          child: Column(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    'assets/icons/globe.svg',
                    color: AppColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Куда угодно',
                style: AppTextStyles.text3,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 80,
          height: 100,
          child: Column(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.darkBlue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    'assets/icons/kalendar.svg',
                    color: AppColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Выходные',
                style: AppTextStyles.text3,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 80,
          height: 100,
          child: Column(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    'assets/icons/fire.svg',
                    color: AppColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Горячие',
                style: AppTextStyles.text3,
              ),
              const Text(
                'билеты',
                style: AppTextStyles.text3,
              ),
            ],
          ),
        ),
      ],
    );
  }

}
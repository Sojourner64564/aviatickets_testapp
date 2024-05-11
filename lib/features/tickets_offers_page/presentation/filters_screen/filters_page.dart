import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
            height: 50,
            width: double.infinity,
            color: AppColors.grey7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.close,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Фильтры',
                    style: AppTextStyles.title2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Пересадки',
            style: AppTextStyles.title3,
          ),
          const SizedBox(height: 16),
          Container(
            height: 140,
            width: double.infinity,
            color: AppColors.grey7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Без пересадок',
                      style: AppTextStyles.text1,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Switch(
                        activeColor: AppColors.blue,
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 60,
            width: double.infinity,
            color: AppColors.grey7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Только в багажом',
                      style: AppTextStyles.text1,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Switch(
                        activeColor: AppColors.blue,
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.green,
            ),
            child: const Center(
              child: Text(
                'Готово',
                style: AppTextStyles.whiteItalicButtonText1,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

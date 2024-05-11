import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class AllTicketsPage extends StatelessWidget {
  const AllTicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Container(
            height: 60,
            width: double.infinity,
            color: AppColors.grey7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.blue,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Москва-Сочи',
                        style: AppTextStyles.title3,
                      ),
                      Text(
                        '23 февраля, 1 пассажир',
                        style: AppTextStyles.title4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return 
            },
          ))
        ],
      ),
    );
  }
}

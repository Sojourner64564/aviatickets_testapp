import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class FlightTileWidget extends StatelessWidget {
  const FlightTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.red,
                ),
              ),
              const SizedBox(width: 10),
              const SizedBox(
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Уральские авиалинии',
                      style: AppTextStyles.title4,
                      ),
                      Row(
                        children: [
                          Text('2 390K',
                            style: AppTextStyles.blueTitle4,
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,
                          size: 15,
                            color: AppColors.blue,
                          ),
                        ],
                      ),
                    ],),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text('4545 45345 435435 45435 45vcbcbbcvbcvbcvbcvb43',
                    maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.text2,
                    ),
                  ),
                ],),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: AppColors.grey5,
          ),
        ],
      ),
    );
  }
}

import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketTileWidget extends StatelessWidget {
  const TicketTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              color: AppColors.grey1,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 21, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'fdfdfd',
                    style: AppTextStyles.title1,
                  ),
                  const SizedBox(height: 16),
                  Row(
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            const Text(
                              '03:15',
                              style: AppTextStyles.title4,
                            ),
                            const SizedBox(width: 5),
                            Container(
                              width: 10,
                              height: 1,
                              color: AppColors.white,
                            )
                          ],),
                          const Text(
                            'DME',
                            style: AppTextStyles.greyTitle4,
                          ),


                        ],
                      ),
                      const SizedBox(width: 5),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              '21:22',
                              style: AppTextStyles.title4,
                            ),
                            SizedBox(width: 16),
                            Text('4ч в пути/Без пересадок',style: AppTextStyles.text2,)
                          ],),
                          Text(
                            'VGO',
                            style: AppTextStyles.greyTitle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 130,
              height: 25,
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                  child: Text(
                'Самый удобный',
                style: AppTextStyles.title4,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

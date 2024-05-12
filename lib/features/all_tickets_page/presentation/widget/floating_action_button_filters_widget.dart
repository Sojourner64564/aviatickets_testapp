import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingActionButtonFiltersWidget extends StatelessWidget {
  const FloatingActionButtonFiltersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            GestureDetector(
              onTap: (){

              },
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/settings.svg'),
                  const SizedBox(width: 5),
                  const Text(
                    'Фильтр',
                    style: AppTextStyles.title4,
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: (){

              },
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/graph.svg'),
                  const SizedBox(width: 5),
                  const Text(
                    'График цен',
                    style: AppTextStyles.title4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

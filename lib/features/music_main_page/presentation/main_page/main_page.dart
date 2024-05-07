import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('Поиск дешевых авиабилетов'),
      Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 9, 0),
        child: Container(
          width: double.infinity,
          height: 122,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.grey2,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 21, 16),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.grey3,
              ),
              child: Row(children: [
                SvgPicture.asset(assetName)
              ],),
            ),
          ),
        ),
      ),
    ],);
  }

}
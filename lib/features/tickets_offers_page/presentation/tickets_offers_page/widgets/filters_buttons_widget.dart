import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiltersButtonsWidget extends StatelessWidget{
  const FiltersButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: GestureDetector(
            onTap: () async{
              DateTime? newDateTime = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(DateTime.now().year - 1),
                lastDate: DateTime(DateTime.now().year + 1),
              );
            },
            child: Container(
            height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.grey3,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Icon(Icons.add,
                  color: AppColors.white,
                  ),
                  Text('обратно',
                    style: AppTextStyles.text2,
                  ),
                ],),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: GestureDetector(
            onTap: () async{
              DateTime? newDateTime = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(DateTime.now().year - 1),
                lastDate: DateTime(DateTime.now().year + 1),
              );
            },
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.grey3,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Text('24 фев,', //TODO сделать показ изначльной даты сегоднящнее число
                  style: AppTextStyles.text2,
                  ),
                  SizedBox(width: 5),
                  Text('сб',
                  style: AppTextStyles.lightGreyText2,
                  ),
                ],),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: Container(
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.grey3,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                SizedBox(
                  width: 12,
                  height: 12,
                  child: SvgPicture.asset(
                    'assets/icons/profile.svg',
                    color: AppColors.grey5,
                  ),
                ),
                const SizedBox(width: 10),
                const Text('1, эконом',
                  style: AppTextStyles.text2,
                ),
              ],),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Container(
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.grey3,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                SizedBox(
                  width: 12,
                  height: 12,
                  child: SvgPicture.asset(
                    'assets/icons/settings.svg',
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(width: 5),
                const Text('фильтры',
                  style: AppTextStyles.text2,
                ),
              ],),
            ),
          ),
        ),
      ],
    );
  }

}
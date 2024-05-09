import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/widgets/flight_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlightsPickerWidget extends StatelessWidget {
  const FlightsPickerWidget({super.key,});
  final List<Color> myColors = const [
    AppColors.red,
    AppColors.blue,
    AppColors.darkBlue,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.grey1,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Прямые рейсы',
              style: AppTextStyles.title2,
            ),
            SizedBox(
              width: double.infinity,
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  return const FlightTileWidget();
                },
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: Text(
                    'Показать все',
                    style: AppTextStyles.buttonText1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

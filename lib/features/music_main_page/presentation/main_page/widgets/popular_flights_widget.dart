import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:aviatickets_testapp/core/route/route.gr.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/tickets_offers_screen.dart';
import 'package:flutter/material.dart';

class PopularFlightsWidget extends StatelessWidget {
  const PopularFlightsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.grey2,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () async{

                AutoRouter.of(context).push(const TicketsOffersRoute());

              },
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/bridge.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Стамбул',
                        style: AppTextStyles.text1,
                      ),
                      Text(
                        'Популярные направления',
                        style: AppTextStyles.lightGreyText2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: AppColors.grey3,
            ),
            GestureDetector(
              onTap: (){
                AutoRouter.of(context).push(const TicketsOffersRoute());

               /* Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const TicketsOffersScreen()
                  ),
                );*/
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/city.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Сочи',
                        style: AppTextStyles.text1,
                      ),
                      Text(
                        'Популярные направления',
                        style: AppTextStyles.lightGreyText2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: AppColors.grey3,
            ),
            GestureDetector(
              onTap: (){
                AutoRouter.of(context).push(const TicketsOffersRoute());
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const TicketsOffersScreen()
                  ),
                );*/
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/lodka.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Пхукет',
                        style: AppTextStyles.text1,
                      ),
                      Text(
                        'Популярные направления',
                        style: AppTextStyles.lightGreyText2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: AppColors.grey3,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/tickets_offer_entity.dart';
import 'package:flutter/material.dart';

class FlightTileWidget extends StatelessWidget {
  const FlightTileWidget(
      {super.key,
      required this.ticketsOfferEntity,
      required this.companyColor});
  final TicketsOfferEntity ticketsOfferEntity;
  final Color companyColor;
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
                  color: companyColor,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 310,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ticketsOfferEntity.title,
                            style: AppTextStyles.title4,
                          ),
                          Row(
                            children: [
                              Text(
                                '${ticketsOfferEntity.price.value} ₽',
                                style: AppTextStyles.blueTitle4,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
                                color: AppColors.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 310,
                      child: Text(
                        ticketsOfferEntity.timeRange,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text2,
                      ),
                    ),
                  ],
                ),
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

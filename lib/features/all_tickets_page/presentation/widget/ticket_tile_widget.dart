import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/ticket_flight_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketTileWidget extends StatelessWidget {
  const TicketTileWidget({super.key, required this.ticketFlightEntity});
  final TicketFlightEntity ticketFlightEntity;

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
              padding: const EdgeInsets.fromLTRB(16, 21, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${ticketFlightEntity.price.value} ₽',
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
                          Row(
                            children: [
                              Text(
                                ticketFlightEntity.departure?.date ?? '',
                                style: AppTextStyles.title4,
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 10,
                                height: 1,
                                color: AppColors.white,
                              )
                            ],
                          ),
                          Text(
                            ticketFlightEntity.departure?.airport ?? '',
                            style: AppTextStyles.greyTitle4,
                          ),
                        ],
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                ticketFlightEntity.arrival?.date ?? '',
                                style: AppTextStyles.title4,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                '${ticketFlightEntity.timeOfFlight}ч в пути',
                                style: AppTextStyles.text2,
                              ),
                              Text(
                                ticketFlightEntity.hasTransfer
                                    ? ''
                                    : '/Без пересадок',
                                style: AppTextStyles.text2,
                              )
                            ],
                          ),
                          Text(
                            ticketFlightEntity.arrival?.airport ?? '',
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
              width: 140,
              height: 25,
              decoration: BoxDecoration(
                color:  ticketFlightEntity.badge != null ? AppColors.blue : AppColors.transparentColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: Text(
                ticketFlightEntity.badge ?? '',
                style: AppTextStyles.title4,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

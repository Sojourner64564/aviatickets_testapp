import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/widgets/filters_buttons_widget.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/widgets/flights_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@routePage
class TicketsOffersPage extends StatelessWidget {
  const TicketsOffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              width: double.infinity,
              height: 122,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.grey3,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: SizedBox(
                            //color: Colors.blue,
                            width: 310,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: SizedBox(
                                    width: 260,
                                    height: 35,
                                    child: TextField(
                                      style: TextStyle(
                                        color: AppColors.white,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        isDense: true,
                                        hintText: 'Минск',
                                        hintStyle: TextStyle(
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: SvgPicture.asset(
                                      'assets/icons/arrow_switch.svg',
                                      fit: BoxFit.contain,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 310,
                          height: 1,
                          color: AppColors.grey5,
                        ),
                        const SizedBox(
                          //color: Colors.red,
                          width: 310,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: SizedBox(
                                  width: 260,
                                  height: 35,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      isDense: true,
                                      hintText: 'Куда - Турция',
                                      hintStyle: TextStyle(
                                        color: AppColors.grey6,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Icon(
                                  Icons.close,
                                  size: 20,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
              width: double.infinity,
              height: 35,
              child: FiltersButtonsWidget(),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: FlightsPickerWidget(),
          ),
        ],
      ),
    );
  }
}

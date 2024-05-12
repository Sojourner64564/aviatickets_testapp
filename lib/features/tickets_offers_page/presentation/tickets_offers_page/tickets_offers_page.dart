import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/injectable/injectable.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/controller/clear_text_field_controller.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/controller/switch_texts_controller.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/widgets/blue_button_all_tickets_widget.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/widgets/filters_buttons_widget.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/widgets/flights_picker_widget.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/widgets/toggle_price_subscribe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@routePage
class TicketsOffersPage extends StatelessWidget {
  TicketsOffersPage({super.key});
  final clearTextFieldController = getIt<ClearTextFieldController>();
  final switchTextsController = getIt<SwitchTextsController>();

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
                            width: 310,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: SizedBox(
                                    width: 260,
                                    height: 35,
                                    child: TextField(
                                      controller: switchTextsController.textFirstEditingController,
                                      autofocus: false,
                                      style: const TextStyle(
                                        color: AppColors.white,
                                      ),
                                      decoration: const InputDecoration(
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Material(
                                    color: AppColors.transparentColor,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(20),
                                      onTap: (){
                                        switchTextsController.switchTextsField();
                                      },
                                      child: Ink(
                                        width: 25,
                                        height: 25,
                                        padding: const EdgeInsets.all(5),
                                        child: SvgPicture.asset(
                                          'assets/icons/arrow_switch.svg',
                                          fit: BoxFit.contain,
                                          color: AppColors.white,
                                        ),
                                      ),
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
                         SizedBox(
                          width: 310,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: SizedBox(
                                  width: 260,
                                  height: 35,
                                  child: TextField(
                                    controller: clearTextFieldController.textSecondEditingController,
                                    autofocus: false,
                                    style: const TextStyle(
                                        color: AppColors.white
                                    ),
                                    decoration: const InputDecoration(
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
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Material(
                                  color: AppColors.transparentColor,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: (){
                                      clearTextFieldController.clearTextField();
                                    },
                                    child: Ink(
                                      width: 25,
                                      height: 25,
                                      child: const Icon(
                                        Icons.close,
                                        size: 20,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
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
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: BlueButtonAllTicketsWidget(),
          ),
          const SizedBox(height: 20),
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TogglePriceSubscribeWidget(),
          ),
        ],
      ),
    );
  }
}

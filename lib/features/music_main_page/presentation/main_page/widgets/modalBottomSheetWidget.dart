import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/injectable/injectable.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/controller/get_last_search_word_controller.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/controller/save_last_search_word_controller.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/main_page/widgets/colored_buttons_widget.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/main_page/widgets/popular_flights_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModalBottomSheetWidget extends StatelessWidget {
  ModalBottomSheetWidget({super.key, required this.textSecondEditingController, required this.textFirstEditingController});
  final TextEditingController textFirstEditingController;
  final TextEditingController textSecondEditingController;
  final getLastSearchWordController = getIt<GetLastSearchWordController>();
  final saveLastSearchWordController = getIt<SaveLastSearchWordController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Container(
              width: double.infinity,
              height: 122,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.grey2,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: SvgPicture.asset(
                            'assets/icons/boing_side.svg',
                            fit: BoxFit.contain,
                            color: AppColors.grey6,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: SizedBox(
                            width: 280,
                            height: 35,
                            child: TextField(
                              controller: textFirstEditingController,
                              onEditingComplete: (){
                                saveLastSearchWordController.saveLastWord();
                              },
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
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.grey5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: SvgPicture.asset(
                            'assets/icons/search_lupa.svg',
                            fit: BoxFit.contain,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: SizedBox(
                            width: 260,
                            height: 35,
                            child: TextField(
                              controller: textSecondEditingController,
                              onEditingComplete: (){
                                saveLastSearchWordController.saveLastWord();
                              },
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
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: ColoredButtonsWidget(),
          ),
          const SizedBox(height: 20),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
          child: PopularFlightsWidget(),
          )
        ],
      ),
    );
  }
}

import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:aviatickets_testapp/core/injectable/injectable.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/cubit/fetch_music_main_page_cubit.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/main_page/widgets/list_view_music_tile.dart';
import 'package:aviatickets_testapp/features/music_main_page/presentation/main_page/widgets/modalBottomSheetWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final fetchMusicMainPageCubit = getIt<FetchMusicMainPageCubit>();
  final List<String> pictureLinksList = [
    'assets/images/dora_dura.png',
    'assets/images/lampabikt.png',
    'assets/images/picture.png',
  ];
  @override
  void initState() {
    fetchMusicMainPageCubit.fetchMusic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Center(
            child: Text(
              'Поиск дешевых',
              style: AppTextStyles.title1,
            ),
          ),
          const Center(
            child: Text(
              'авиабилетов',
              style: AppTextStyles.title1,
            ),
          ),
          const SizedBox(height: 40),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/search_lupa.svg',
                        width: 20,
                        height: 20,
                        color: AppColors.mainGrey,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            child: SizedBox(
                              width: 280,
                              height: 25,
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
                          Container(
                            width: 280,
                            height: 1,
                            color: AppColors.grey5,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: AppColors.grey7,
                                    barrierColor: AppColors.grey7,
                                    isScrollControlled: true,
                                    showDragHandle: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const ModalBottomSheetWidget();
                                    });
                              },
                              child: const SizedBox(
                                width: 280,
                                height: 25,
                                child: TextField(
                                  enabled: false,
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
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Музыкально отлететь',
              style: AppTextStyles.title2,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 250,
            width: double.infinity,
            child:
                BlocBuilder<FetchMusicMainPageCubit, FetchMusicMainPageState>(
              bloc: fetchMusicMainPageCubit,
              builder: (context, state) {
                if (state is FetchMusicMainPageInitialState) {
                  return const Center(
                      child: Text(
                    'Initial',
                    style: AppTextStyles.title3,
                  ));
                }
                if (state is FetchMusicMainPageLoadingState) {
                  return const Center(
                      child: Text(
                    'Loading',
                    style: AppTextStyles.title3,
                  ));
                }
                if (state is FetchMusicMainPageErrorState) {
                  return const Center(
                      child: Text(
                    'Error',
                    style: AppTextStyles.title3,
                  ));
                }
                if (state is FetchMusicMainPageEmptyState) {
                  return const Center(
                      child: Text(
                    'Empty',
                    style: AppTextStyles.title3,
                  ));
                }
                if (state is FetchMusicMainPageLoadedState) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.musicEntity.offers.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: ListViewMusicTile(
                          offerEntity: state.musicEntity.offers[index],
                          linkPicture: pictureLinksList[index],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 40);
                    },
                  );
                } else {
                  return const Center(
                      child: Text(
                    'Unexpected error',
                    style: AppTextStyles.title3,
                  ));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

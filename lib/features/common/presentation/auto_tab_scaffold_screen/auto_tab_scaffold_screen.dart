import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/route/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class AutoTabScaffoldScreen extends StatelessWidget {
  const AutoTabScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MainRoute(),
        HotelRoute(),
        ShorterRoute(),
        SubscribeRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(
              width: 1,
              color: AppColors.grey2,
            ),),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: AppColors.grey6,
              selectedFontSize: 11,
              unselectedFontSize: 11,
              selectedItemColor: AppColors.blueTitle,
              backgroundColor: AppColors.mainGrey,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: [
                BottomNavigationBarItem(
                  label: 'Авиабилеты',
                  icon: SvgPicture.asset('assets/icons/boing.svg'), //TODO сделать камстомные иконки
                ),
                BottomNavigationBarItem(
                  label: 'Отели',
                  icon: SvgPicture.asset('assets/icons/bed.svg'),
                ),
                BottomNavigationBarItem(
                  label: 'Короче',
                  icon: SvgPicture.asset('assets/icons/tuta.svg'),
                ),
                BottomNavigationBarItem(
                  label: 'Подписки',
                  icon: SvgPicture.asset('assets/icons/bell.svg'),
                ),
                BottomNavigationBarItem(
                  label: 'Профиль',
                  icon: SvgPicture.asset('assets/icons/profile.svg'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'custom_bottom_bar.dart';

enum BottomBarEnum { User, Grid, Favoriteprimary, BagonPrimary, Lock }

class CustomBottonBar extends StatefulWidget {
  const CustomBottonBar({super.key, required this.onChanged});
  final Function(BottomBarEnum)? onChanged;

  @override
  State<CustomBottonBar> createState() => CustomBottonBarState();
}

class CustomBottonBarState extends State<CustomBottonBar> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    List<BottomMenuModel> bottomMenuList = [
      BottomMenuModel(
        icon: ImageConstant.imgUser,
        activeIcon: ImageConstant.imgUser,
        type: BottomBarEnum.User,
      ),
      BottomMenuModel(
        icon: ImageConstant.imgGrid,
        activeIcon: ImageConstant.imgGrid,
        type: BottomBarEnum.Grid,
      ),
      BottomMenuModel(
        icon: ImageConstant.imgFavoritePrimary,
        activeIcon: ImageConstant.imgFavoritePrimary,
        type: BottomBarEnum.Favoriteprimary,
      ),
      BottomMenuModel(
        icon: ImageConstant.imgBagOnPrimary,
        activeIcon: ImageConstant.imgBagOnPrimary,
        type: BottomBarEnum.BagonPrimary,
      ),
      BottomMenuModel(
        icon: ImageConstant.imgLock,
        activeIcon: ImageConstant.imgLock,
        type: BottomBarEnum.Lock,
      ),
    ];

    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(color: appTheme.whiteA700),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
            );
        });
    }
  }
}

class BottomMenuModel {
  BottomMenuModel({
    this.icon,
    this.activeIcon,
    this.type,
  });

  final String? icon;
  final String? activeIcon;
  final BottomBarEnum? type;
}

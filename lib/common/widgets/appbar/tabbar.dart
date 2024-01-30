import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? CColors.black : CColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: CColors.primary,
        labelColor: dark ? CColors.white : CColors.black,
        unselectedLabelColor: CColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}

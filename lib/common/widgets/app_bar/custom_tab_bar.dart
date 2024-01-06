import 'package:flutter/material.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/device/device_utility.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.dark : TColors.light,
      child: TabBar(
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? Colors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

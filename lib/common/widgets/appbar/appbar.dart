import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget{

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const CAppBar({
    super.key, 
    this.title, 
    this.showBackArrow = false, 
    this.leadingIcon, 
    this.actions, 
    this.leadingOnPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false, //quitar back arrow
        leading: showBackArrow 
        ? IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios_new_outlined)) 
        : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: const Icon(Icons.arrow_back_ios_new_outlined)) : null,
        title: title,
        actions: actions,

    ),);
  }
  
  @override
  
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}
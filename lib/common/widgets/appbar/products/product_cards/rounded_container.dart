import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CRoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const CRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = CSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = CColors.white,
      this.backgroundColor = CColors.borderPrimary,
      this.padding,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';


class CircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  const CircularContainer({
    super.key, this.width = 400, this.height = 400, this.radius = 400,  this.padding = 0, this.child,  this.backgroundColor = CColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CCircularImage extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final Color? backgroundColor;
  final double width, height, padding;

  const CCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = CSizes.sm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (CHelperFunctions.isDarkMode(context)
                ? CColors.black
                : CColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: AssetImage(image),
        color: CHelperFunctions.isDarkMode(context)
            ? CColors.white
            : CColors.black,
      ),
    );
  }
}

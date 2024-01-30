import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class CRoundedImage extends StatelessWidget {
  const CRoundedImage({
    super.key,
    this.width,
    this.heith,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor = CColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = CSizes.md,
  });

  final double? width, heith;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: heith,
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: border,
            color: backgroundColor),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: AssetImage(imageUrl),
              fit: fit,
            )),
      ),
    );
  }
}

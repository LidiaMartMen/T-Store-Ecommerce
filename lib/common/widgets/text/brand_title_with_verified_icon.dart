import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CBrandTitleWithVerifiedIcon extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;

  final double? brandTextSize;

  const CBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = CColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: maxLines,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontSize: brandTextSize),
        ),
        const SizedBox(
          width: CSizes.xs,
        ),
        Icon(
          Icons.verified_rounded,
          color: iconColor,
          size: CSizes.iconXs,
        )
      ],
    );
  }
}

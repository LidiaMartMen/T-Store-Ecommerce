import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CSearchBar extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackground;
  final bool showBorder;
  final EdgeInsetsGeometry padding;

  const CSearchBar({
    super.key,
    required this.text,
    this.icon = Icons.search_outlined,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Padding(
      padding: padding,
      child: Container(
        width: CDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(CSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? CColors.dark
                    : CColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(CSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: CColors.grey) : null),
        child: Row(
          children: [
            Icon(
              icon,
              color: CColors.grey,
            ),
            const SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

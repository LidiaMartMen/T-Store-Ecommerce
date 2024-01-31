import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/icons/circular_icon.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CProductQuantityButton extends StatelessWidget {
  const CProductQuantityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CCircularIcon(
          icon: Icons.remove,
          width: 40,
          height: 40,
          size: CSizes.md,
          color: dark ? CColors.white : CColors.black,
          backgroundColor: dark ? CColors.darkerGrey : CColors.light,
        ),
        const SizedBox(
          width: CSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: CSizes.spaceBtwItems,
        ),
        const CCircularIcon(
          icon: Icons.add,
          backgroundColor: CColors.primary,
          width: 40,
          height: 40,
          color: CColors.white,
        ),
      ],
    );
  }
}

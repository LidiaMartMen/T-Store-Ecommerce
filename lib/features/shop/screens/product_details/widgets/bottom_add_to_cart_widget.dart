import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/icons/circular_icon.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CBottomAddToCart extends StatelessWidget {
  const CBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: CSizes.defaultSpace, vertical: CSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? CColors.darkerGrey : CColors.light,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(CSizes.cardRadiusLg),
            topRight: Radius.circular(CSizes.cardRadiusLg)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CCircularIcon(
                icon: Icons.remove,
                backgroundColor: CColors.darkGrey,
                width: 40,
                height: 40,
                color: CColors.white,
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
                backgroundColor: CColors.black,
                width: 40,
                height: 40,
                color: CColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(CSizes.md),
                  backgroundColor: CColors.black,
                  side: const BorderSide(color: CColors.black)),
              child: const Text('Add to cart'))
        ],
      ),
    );
  }
}

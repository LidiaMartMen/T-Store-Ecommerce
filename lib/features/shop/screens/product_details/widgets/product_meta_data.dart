import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/images/circular_images.dart';
import 'package:t_store_firebase/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:t_store_firebase/common/widgets/text/product_price_text.dart';
import 'package:t_store_firebase/common/widgets/text/product_title_text.dart';
import 'package:t_store_firebase/utils/helpers/helper_functions.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../../common/widgets/products/products/product_cards/rounded_container.dart';

class CProductMetaData extends StatelessWidget {
  const CProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = CHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //PRICE
        Row(
          children: [
            //sale tag:
            CRoundedContainer(
                radius: CSizes.sm,
                backgroundColor: CColors.secondary.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(
                    horizontal: CSizes.sm, vertical: CSizes.xs),
                child: Text(
                  '25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: CColors.black),
                )),
            const SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            //price:
            Text(
              '250€',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            const CProductPrice(
              price: '150',
              isLarge: true,
            ),
          ],
        ),
        //TITLE
        const SizedBox(
          height: CSizes.spaceBtwItems / 1.5,
        ),
        const CProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(
          height: CSizes.spaceBtwItems / 1.5,
        ),
        //STOCK STATUS
        Row(
          children: [
            const CProductTitleText(title: 'Status'),
            const SizedBox(width: CSizes.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        const SizedBox(
          height: CSizes.spaceBtwItems / 1.5,
        ),
        //BRAND
        const Row(
          children: [
            CCircularImage(
              image: CImages.shoeIcon,
              width: 32,
              height: 32,
            ),
            CBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: 20,
            ),
          ],
        )
      ],
    );
  }
}

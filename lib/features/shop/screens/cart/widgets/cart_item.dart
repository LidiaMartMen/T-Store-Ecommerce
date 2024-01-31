import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/images/rounded_images.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../../common/widgets/text/brand_title_with_verified_icon.dart';
import '../../../../../common/widgets/text/product_title_text.dart';

class CCartItem extends StatelessWidget {
  const CCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //Image
        CRoundedImage(
          imageUrl: CImages.productImage1,
          width: 60,
          heith: 60,
          padding: const EdgeInsets.all(CSizes.sm),
          backgroundColor: dark ? CColors.darkerGrey : CColors.light,
        ),
        const SizedBox(
          width: CSizes.spaceBtwItems,
        ),
        //Title, Price & Size:
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: CProductTitleText(
                  title: 'Black Shoes',
                  maxLine: 1,
                ),
              ),
              //Attributes:
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '38', style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../products/products/product_cards/rounded_container.dart';
import '../images/circular_images.dart';
import '../text/brand_title_with_verified_icon.dart';
import '../../../utils/utils.dart';

class CBrandCard extends StatelessWidget {
  final bool showBorder;
  final void Function()? onTap;

  const CBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CRoundedContainer(
        padding: const EdgeInsets.all(CSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            const Flexible(
              child: CCircularImage(
                image: CImages.clothIcon,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              width: CSizes.spaceBtwItems / 2,
            ),
            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: 20,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

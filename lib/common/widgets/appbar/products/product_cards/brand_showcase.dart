import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../../features/shop/screens/store/widget/custom_brand_card.dart';

class CBrandShowcase extends StatelessWidget {
  final List<String> images;

  const CBrandShowcase({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      showBorder: true,
      borderColor: CColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: CSizes.spaceBtwItems),
      padding: const EdgeInsets.all(CSizes.md),
      child: Column(
        children: [
          const CBrandCard(showBorder: false),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: CRoundedContainer(
        height: 100,
        backgroundColor: CHelperFunctions.isDarkMode(context)
            ? CColors.darkGrey
            : CColors.light,
        margin: const EdgeInsets.only(right: CSizes.sm),
        padding: const EdgeInsets.all(CSizes.sm),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

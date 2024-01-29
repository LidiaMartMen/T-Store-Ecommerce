import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/styles/shadows.dart';
import 'package:t_store_firebase/common/widgets/appbar/images/rounded_images.dart';
import 'package:t_store_firebase/common/widgets/appbar/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/common/widgets/icons/circular_icon.dart';
import 'package:t_store_firebase/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:t_store_firebase/common/widgets/text/product_price_text.dart';
import 'package:t_store_firebase/common/widgets/text/product_title_text.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CProductCardVertical extends StatelessWidget {
  const CProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [CShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(CSizes.productImageRadius),
            color: dark ? CColors.darkerGrey : CColors.white),
        child: Column(
          children: [
            //THUMBNAIL:
            CRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(CSizes.sm),
              backgroundColor: dark ? CColors.dark : CColors.light,
              child: Stack(
                children: [
                  const CRoundedImage(
                    imageUrl: CImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: CRoundedContainer(
                      radius: CSizes.sm,
                      backgroundColor: CColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: CSizes.sm, vertical: CSizes.xs),
                      child: const CProductPrice(
                        currencySign: '€',
                        price: '35',
                        maxLines: 1,
                      ),
                    ),
                    //favourite Icon:
                  ),
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: CCircularIcon(
                        icon: Icons.favorite,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems / 2,
            ),
            //DETAILS:
            Padding(
              padding: const EdgeInsets.only(left: CSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems / 2,
                  ),
                  const CBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '35€',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: CColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(CSizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    CSizes.productImageRadius))),
                        child: const SizedBox(
                          height: CSizes.iconLg * 1.2,
                          width: CSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: CColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

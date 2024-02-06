import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/styles/shadows.dart';
import 'package:t_store_firebase/common/widgets/icons/circular_icon.dart';
import 'package:t_store_firebase/common/widgets/images/rounded_images.dart';
import 'package:t_store_firebase/common/widgets/products/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:t_store_firebase/common/widgets/text/product_price_text.dart';
import 'package:t_store_firebase/common/widgets/text/product_title_text.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CProductCardHorizontal extends StatelessWidget {
  const CProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(CSizes.productImageRadius),
            color: dark ? CColors.darkerGrey : CColors.softGrey),
        child: Row(
          children: [
            //Thumbnail:
            CRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(CSizes.sm),
              backgroundColor: dark ? CColors.dark : CColors.light,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: CRoundedImage(
                      imageUrl: CImages.productImage1,
                      applyImageRadius: true,
                    ),
                  ),
                  //SALE TAG:
                  Positioned(
                    top: 12,
                    child: CRoundedContainer(
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
              width: CSizes.spaceBtwItems / 2,
            ),
            //DETAILS:
            SizedBox(
              width: 160,
              child: Padding(
                padding: const EdgeInsets.only(top: CSizes.sm, left: CSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CProductTitleText(
                          title: 'Green Nike Sleeveles Tshirt',
                          smallSize: true,
                        ),
                        SizedBox(height: CSizes.spaceBtwItems / 2),
                        CBrandTitleWithVerifiedIcon(title: 'Nike'),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //PRICING:
                        const Flexible(
                          child: CProductPrice(
                            price: '255',
                            isLarge: true,
                          ),
                        ),
                        //ADD TO CART BUTTON
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
              ),
            )
          ],
        ));
  }
}

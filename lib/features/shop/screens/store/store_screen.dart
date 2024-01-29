import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/appbar/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:t_store_firebase/features/shop/widgets/cart_counter_icon.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/helpers/helper_functions.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../common/widgets/images/custom_circular_images.dart';
import '../../../../common/widgets/layout/grid_layout.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CCartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: CHelperFunctions.isDarkMode(context)
                  ? CColors.black
                  : CColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(CSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: CSizes.spaceBtwItems,
                    ),
                    //SEARCH BAR
                    const CSearchBar(
                      text: 'Search',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: CSizes.spaceBtwSections,
                    ),
                    //featured brands
                    CSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: CSizes.spaceBtwItems / 1.5,
                    ),
                    CGridLayout(
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: CRoundedContainer(
                            padding: const EdgeInsets.all(CSizes.sm),
                            showBorder: true,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: 20,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 6,
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}

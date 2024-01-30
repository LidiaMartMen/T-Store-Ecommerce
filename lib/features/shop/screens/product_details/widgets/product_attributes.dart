import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/common/widgets/text/product_title_text.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/utils/helpers/helper_functions.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CRoundedContainer(
          padding: const EdgeInsets.all(CSizes.md),
          backgroundColor: dark ? CColors.darkerGrey : CColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const CSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: CSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Actual price:
                      Row(
                        children: [
                          const CProductTitleText(
                            title: 'Price :',
                            smallSize: true,
                          ),
                          Text(
                            '25€',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: CSizes.spaceBtwItems,
                          ),
                          Text(
                            '20€',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: CColors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const CProductTitleText(
                            title: 'Stock :',
                            smallSize: true,
                          ),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems / 2,
              ),
              //variation description:
              const CProductTitleText(
                title:
                    'Ad eiusmod commodo duis adipisicing duis nulla aute cillum eiusmod consectetur. Duis ut incididunt id amet ad dolor. Consectetur reprehenderit eu tempor aliqua do excepteur ea sint elit sunt sint. Aliquip quis commodo eu eiusmod veniam.',
                smallSize: true,
                maxLine: 4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems,
        ),
        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CSectionHeading(
              title: 'Color',
              showActionButton: false,
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                CChoiceChip(
                  onSelected: (value) {},
                  text: 'Green',
                  selected: false,
                ),
                CChoiceChip(
                  onSelected: (value) {},
                  text: 'Blue',
                  selected: true,
                ),
                CChoiceChip(
                  onSelected: (value) {},
                  text: 'Yellow',
                  selected: false,
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                CChoiceChip(
                  onSelected: (value) {},
                  text: '38',
                  selected: true,
                ),
                CChoiceChip(
                  onSelected: (value) {},
                  text: '40',
                  selected: false,
                ),
                CChoiceChip(
                  onSelected: (value) {},
                  text: '42',
                  selected: false,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

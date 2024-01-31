import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/utils/utils.dart';

class COrderListItems extends StatelessWidget {
  const COrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => CRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(CSizes.md),
        backgroundColor: dark ? CColors.dark : CColors.light,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            children: [
              //Icon:
              const Icon(Icons.local_shipping_outlined),
              const SizedBox(
                width: CSizes.spaceBtwItems / 2,
              ),

              //Status & Date:
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: CColors.primary, fontWeightDelta: 1),
                    ),
                    Text(
                      '03 Nov 2024',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              //Icon:
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: CSizes.iconMd,
                  ))
            ],
          ),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    //Icon:
                    const Icon(Icons.tag),
                    const SizedBox(
                      width: CSizes.spaceBtwItems / 2,
                    ),

                    //Status & Date:
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(
                                    color: CColors.primary, fontWeightDelta: 1),
                          ),
                          Text(
                            '#123456789',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    //Icon:
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: CSizes.iconMd,
                        ))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    //Icon:
                    const Icon(Icons.calendar_month_outlined),
                    const SizedBox(
                      width: CSizes.spaceBtwItems / 2,
                    ),

                    //Status & Date:
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shipping Date',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(
                                    color: CColors.primary, fontWeightDelta: 1),
                          ),
                          Text(
                            '03 Feb 2024',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    //Icon:
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: CSizes.iconMd,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: CSizes.spaceBtwSections,
      ),
      itemCount: 4,
    );
  }
}

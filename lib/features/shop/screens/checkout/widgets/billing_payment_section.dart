import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/products/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CBillingPaymentSection extends StatelessWidget {
  const CBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        CSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            CRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? CColors.light : CColors.white,
              padding: const EdgeInsets.all(CSizes.sm),
              child: const Image(
                image: AssetImage(CImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems / 2,
            ),
            Text(
              'Paypal',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}

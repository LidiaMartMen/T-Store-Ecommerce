import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CBillingAmountSection extends StatelessWidget {
  const CBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //subtotal:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '236€',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 2,
        ),
        //Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '6€',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 2,
        ),
        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '6€',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 2,
        ),
        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Total',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              '6€',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}

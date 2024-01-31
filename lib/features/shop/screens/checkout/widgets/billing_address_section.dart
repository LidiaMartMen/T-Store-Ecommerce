import 'package:flutter/material.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CBillingAddressSection extends StatelessWidget {
  const CBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 2,
        ),
        Text(
          'Lidia Coding',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            Text(
              '+34 789678765',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history_outlined,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            Text(
              'Calle Nidos, 8, Griñon, Madrid, 28907',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}

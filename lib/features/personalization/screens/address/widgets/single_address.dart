import 'package:flutter/material.dart';

import 'package:t_store_firebase/utils/utils.dart';

import '../../../../../common/widgets/products/products/product_cards/rounded_container.dart';

class CSingleAddress extends StatelessWidget {
  final bool selectedAddress;

  const CSingleAddress({super.key, required this.selectedAddress});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return CRoundedContainer(
      padding: const EdgeInsets.all(CSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? CColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? CColors.darkerGrey
              : CColors.grey,
      margin: const EdgeInsets.only(bottom: CSizes.spaceBtwItems),
      child: Stack(children: [
        Positioned(
          right: 0,
          top: 0,
          child: Icon(
            selectedAddress ? Icons.check_circle_outline_rounded : null,
            color: selectedAddress ? CColors.darkerGrey : null,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: CSizes.sm / 2,
            ),
            const Text(
              'Calle Griñón, número 27, Cubas de la Sagra, Madrid, 28991',
              softWrap: true,
            ),
            const SizedBox(
              height: CSizes.sm / 2,
            ),
            const Text(
              '+34678909876',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: CSizes.sm / 2,
            ),
          ],
        )
      ]),
    );
  }
}

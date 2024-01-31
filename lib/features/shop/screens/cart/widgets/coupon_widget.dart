import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../../common/widgets/appbar/products/product_cards/rounded_container.dart';

class CCouponCode extends StatelessWidget {
  const CCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return CRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? CColors.dark : CColors.white,
      padding: const EdgeInsets.only(
          top: CSizes.sm, bottom: CSizes.sm, right: CSizes.sm, left: CSizes.md),
      child: Row(children: [
        Flexible(
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: 'Enter your coupon code',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
          ),
        ),
        //Button
        SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark
                        ? CColors.white.withOpacity(0.5)
                        : CColors.dark.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                onPressed: () {},
                child: const Text('Apply')))
      ]),
    );
  }
}

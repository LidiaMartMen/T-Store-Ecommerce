import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/text/product_price_text.dart';
import 'package:t_store_firebase/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:t_store_firebase/features/shop/screens/cart/widgets/product_quantity_button.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CListCartItems extends StatelessWidget {
  final bool showAddRemoveButtons;

  const CListCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: CSizes.spaceBtwSections,
      ),
      itemCount: 4,
      itemBuilder: (_, index) => Column(
        children: [
          const CCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(
              width: CSizes.spaceBtwItems,
            ),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    //Add remove Buttons:
                    CProductQuantityButton(),
                  ],
                ),

                //price:
                CProductPrice(
                  price: '235',
                  isLarge: true,
                )
              ],
            )
        ],
      ),
    );
  }
}

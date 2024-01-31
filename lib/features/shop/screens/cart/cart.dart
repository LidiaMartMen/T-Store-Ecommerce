import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/features/shop/screens/cart/widgets/list_cart_items.dart';
import 'package:t_store_firebase/features/shop/screens/checkout/checkout_screen.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(CSizes.defaultSpace),
        //List of items:

        child: CListCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout 235€'),
        ),
      ),
    );
  }
}

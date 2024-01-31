import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/appbar/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/features/authentication/screens/signup/success_screen.dart';
import 'package:t_store_firebase/features/shop/screens/cart/widgets/coupon_widget.dart';
import 'package:t_store_firebase/features/shop/screens/cart/widgets/list_cart_items.dart';
import 'package:t_store_firebase/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:t_store_firebase/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_store_firebase/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:t_store_firebase/features/widgets/navigation_menu.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const CListCartItems(
              showAddRemoveButtons: false,
            ),
            const SizedBox(
              width: CSizes.spaceBtwSections,
            ),
            //Coupon TextField:
            const CCouponCode(),
            const SizedBox(
              width: CSizes.spaceBtwSections,
            ),
            CRoundedContainer(
              padding: const EdgeInsets.all(CSizes.md),
              showBorder: true,
              backgroundColor: dark ? CColors.black : CColors.white,
              child: const Column(
                children: [
                  //Pricing:
                  CBillingAmountSection(),
                  SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  //Divider
                  Divider(),
                  SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  //Payment methods
                  CBillingPaymentSection(),
                  SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  // Address
                  CBillingAddressSection(),
                  SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                ],
              ),
            )
          ],
        )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
              image: CImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subtitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()))),
          child: const Text('Checkout 235€'),
        ),
      ),
    );
  }
}

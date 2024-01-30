import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/appbar/products/product_cards/product_card_vertical.dart';
import 'package:t_store_firebase/common/widgets/icons/circular_icon.dart';
import 'package:t_store_firebase/common/widgets/layout/grid_layout.dart';
import 'package:t_store_firebase/features/shop/screens/home/home_screen.dart';
import 'package:t_store_firebase/utils/utils.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CCircularIcon(
            icon: Icons.add,
            onPressed: (() => Get.to(const HomeScreen())),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            CGridLayout(
                itemCount: 8,
                itemBuilder: (_, index) {
                  return const CProductCardVertical();
                })
          ],
        ),
      )),
    );
  }
}

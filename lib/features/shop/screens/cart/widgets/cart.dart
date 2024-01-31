import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/images/rounded_images.dart';
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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(
            height: CSizes.spaceBtwSections,
          ),
          itemCount: 4,
          itemBuilder: (_, index) => Column(
            children: [
              Row(
                children: [
                  //Image
                  CRoundedImage(
                    imageUrl: CImages.productImage1,
                    width: 60,
                    heith: 60,
                    padding: const EdgeInsets.all(CSizes.sm),
                    backgroundColor: dark ? CColors.darkerGrey : CColors.light,
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:t_store_firebase/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:t_store_firebase/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:t_store_firebase/utils/utils.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //PRODUCT IMAGE SLIDER:
            CProductImageSlider(),
            //Product details:
            Padding(
              padding: EdgeInsets.only(
                right: CSizes.defaultSpace,
                left: CSizes.defaultSpace,
                bottom: CSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //RATING & SHARE:
                  CRatingAndShare()
                  // PRICE, TITLE, STACK & BRAND:

                  // ATTRIBUTES

                  //CHECKOUT BUTTON

                  //DESCRIPTION

                  //REVIEWS
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store_firebase/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:t_store_firebase/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_store_firebase/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:t_store_firebase/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store_firebase/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:t_store_firebase/features/shop/screens/product_reviews/product_review_screen.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/utils/utils.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //PRODUCT IMAGE SLIDER:
            const CProductImageSlider(),
            //Product details:
            Padding(
              padding: const EdgeInsets.only(
                right: CSizes.defaultSpace,
                left: CSizes.defaultSpace,
                bottom: CSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //RATING & SHARE:
                  const CRatingAndShare(),
                  // PRICE, TITLE, STACK & BRAND:
                  const CProductMetaData(),
                  // ATTRIBUTES
                  const ProductAttributes(),
                  const SizedBox(
                    height: CSizes.spaceBtwSections,
                  ),
                  //CHECKOUT BUTTON
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwSections,
                  ),
                  //DESCRIPTION
                  const CSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    ' Mollit sint tempor eiusmod culpa. Sunt esse consectetur labore do eu. Ea dolore exercitation ullamco veniam.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  //REVIEWS
                  const Divider(),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CSectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Icons.arrow_right_outlined))
                    ],
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

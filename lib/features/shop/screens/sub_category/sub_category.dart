import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/images/rounded_images.dart';
import 'package:t_store_firebase/common/widgets/products/products/product_card_horizontal.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/utils/utils.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              const CRoundedImage(
                imageUrl: CImages.promoBanner1,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),

              //Subcategories:
              Column(
                children: [
                  CSectionHeading(
                    title: 'Sport shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: CSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: CSizes.spaceBtwItems,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          const CProductCardHorizontal(),
                      itemCount: 6,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

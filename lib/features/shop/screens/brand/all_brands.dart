import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/brands/brand_products.dart';
import 'package:t_store_firebase/common/widgets/brands/custom_brand_card.dart';
import 'package:t_store_firebase/common/widgets/layout/grid_layout.dart';
import 'package:t_store_firebase/common/widgets/products/products/sortable/sortable_products.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              const CSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              CGridLayout(
                  mainAxisExtent: 80,
                  itemCount: 10,
                  itemBuilder: (context, index) => CBrandCard(
                        showBorder: true,
                        onTap: () => Get.to(() => const BrandProducts()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

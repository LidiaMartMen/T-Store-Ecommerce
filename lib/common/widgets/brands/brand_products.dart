import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/brands/custom_brand_card.dart';
import 'package:t_store_firebase/common/widgets/products/products/sortable/sortable_products.dart';
import 'package:t_store_firebase/utils/utils.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              CBrandCard(showBorder: true),
              SizedBox(height: CSizes.spaceBtwSections),
              CSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

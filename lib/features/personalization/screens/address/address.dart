import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/products/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/features/personalization/screens/address/widgets/add_new_address.dart';
import 'package:t_store_firebase/features/personalization/screens/address/widgets/single_address.dart';
import 'package:t_store_firebase/utils/utils.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: CColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(
          Icons.add,
          color: CColors.white,
        ),
      ),
      appBar: CAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            CSingleAddress(selectedAddress: false),
            CSingleAddress(selectedAddress: false),
            CSingleAddress(selectedAddress: true),
            CSingleAddress(selectedAddress: false),
          ],
        ),
      )),
    );
  }
}

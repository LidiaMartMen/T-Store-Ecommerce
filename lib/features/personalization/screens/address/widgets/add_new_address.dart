import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/features/personalization/screens/address/address.dart';
import 'package:t_store_firebase/utils/utils.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people), labelText: 'Name'),
            ),
            const SizedBox(
              height: CSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people), labelText: 'Phone Number'),
            ),
            const SizedBox(
              height: CSizes.spaceBtwInputFields,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.build_outlined),
                        labelText: 'Street'),
                  ),
                ),
                const SizedBox(
                  width: CSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.build_outlined),
                        labelText: 'Postal Code'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: CSizes.spaceBtwInputFields,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.build_outlined),
                        labelText: 'City'),
                  ),
                ),
                const SizedBox(
                  width: CSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.build_outlined),
                        labelText: 'State'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: CSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.people), labelText: 'Country'),
            ),
            const SizedBox(
              height: CSizes.spaceBtwInputFields,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const UserAddressScreen()),
                    child: const Text('Save'))),
          ],
        )),
      )),
    );
  }
}

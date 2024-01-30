import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/images/circular_images.dart';
import 'package:t_store_firebase/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/utils/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      //Body:

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CCircularImage(
                      image: CImages.clothIcon,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              //details:
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              const CSectionHeading(
                title: 'Profile information',
                showActionButton: false,
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              CProfileMenu(
                icon: Icons.arrow_forward,
                onPressed: () {},
                title: 'Name',
                value: 'Lidia Martínez',
              ),
              CProfileMenu(
                icon: Icons.arrow_forward,
                onPressed: () {},
                title: 'Name',
                value: 'Lidia Martínez',
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              const CSectionHeading(
                title: 'Personal information',
                showActionButton: false,
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              CProfileMenu(
                icon: Icons.arrow_forward,
                onPressed: () {},
                title: 'Name',
                value: 'Lidia Martínez',
              ),
              CProfileMenu(
                icon: Icons.arrow_forward,
                onPressed: () {},
                title: 'Name',
                value: 'Lidia Martínez',
              ),
              CProfileMenu(
                icon: Icons.arrow_forward,
                onPressed: () {},
                title: 'Name',
                value: 'Lidia Martínez',
              ),
              CProfileMenu(
                icon: Icons.arrow_forward_outlined,
                onPressed: () {},
                title: 'Name',
                value: 'Lidia Martínez',
              ),
              CProfileMenu(
                icon: Icons.arrow_forward,
                onPressed: () {},
                title: 'Name',
                value: 'Lidia Martínez',
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

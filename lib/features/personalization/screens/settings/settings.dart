import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/listTiles/setting_menu_tile.dart';
import 'package:t_store_firebase/common/widgets/listTiles/user_profile_tile.dart';
import 'package:t_store_firebase/features/personalization/screens/profile/profile_screen.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/features/widgets/primary_header_container.dart';
import 'package:t_store_firebase/utils/utils.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //Header:
          PrimaryHeaderContainer(
            child: Column(
              children: [
                CAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: CColors.white),
                  ),
                ),
                const SizedBox(
                  height: CSizes.spaceBtwSections,
                ),
                CUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: CSizes.spaceBtwSections,
                ),
              ],
            ),
          ),
          //BODY:
          Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              children: [
                //title:
                const CSectionHeading(
                  title: 'Account Settings',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: CSizes.spaceBtwItems,
                ),
                CSettingMenuTile(
                  icon: Icons.home_outlined,
                  title: 'My Adresses',
                  subtitle: 'Set shooping delivery adress',
                  onTap: () {},
                ),
                CSettingMenuTile(
                  icon: Icons.shopping_cart_outlined,
                  title: 'My Cart',
                  subtitle: 'Set shooping delivery adress',
                  onTap: () {},
                ),
                CSettingMenuTile(
                  icon: Icons.badge_outlined,
                  title: 'My Orders',
                  subtitle: 'Set shooping delivery adress',
                  onTap: () {},
                ),
                CSettingMenuTile(
                  icon: Icons.food_bank_outlined,
                  title: 'My Bank Details',
                  subtitle: 'Set shooping delivery adress',
                  onTap: () {},
                ),
                CSettingMenuTile(
                  icon: Icons.discount_outlined,
                  title: 'My Coupons',
                  subtitle: 'Set shooping delivery adress',
                  onTap: () {},
                ),
                CSettingMenuTile(
                  icon: Icons.wordpress_outlined,
                  title: 'Geolocation',
                  subtitle: 'Set shooping delivery adress',
                  onTap: () {},
                  trailing: Switch(value: false, onChanged: (value) {}),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

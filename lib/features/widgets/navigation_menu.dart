import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:t_store_firebase/features/authentication/providers/selected_index_provider.dart';
import 'package:t_store_firebase/features/shop/screens/screens.dart';
import 'package:t_store_firebase/utils/utils.dart';

class NavigationMenu extends ConsumerWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = CHelperFunctions.isDarkMode(context);
    final selectedIndex = ref.watch(selectedIndexProvider);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            ref.read(selectedIndexProvider.notifier).updateIndex(index);
          },
          backgroundColor: dark ? CColors.black : CColors.white,
          indicatorColor: dark ? CColors.white.withOpacity(0.1) : CColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shop), label: 'Store'),
            NavigationDestination(
                icon: Icon(Icons.heat_pump_rounded), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Icons.people), label: 'Profile'),
          ]),
      body: IndexedStack(
        index: selectedIndex,
        children: const [
              HomeScreen(),
              StoreScreen(),
              WishlistScreen(),
              ProfileScreen(),
        ],),
    );
  }
}

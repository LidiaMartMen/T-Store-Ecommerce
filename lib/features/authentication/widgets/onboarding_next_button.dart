import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/features/authentication/providers/onboarding_pageController_provider.dart';
import 'package:t_store_firebase/features/authentication/providers/onboarding_provider.dart';
import 'package:t_store_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:t_store_firebase/utils/utils.dart';

class OnBoardingNextButton extends ConsumerWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final PageController pageController = ref.read(onBoardingPageControllerProvider);
    final int currentPage = ref.watch(onBoardingProvider);

    return Positioned(
      right: CSizes.defaultSpace,
      bottom: CDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () {
            if (currentPage < 2) {
              ref
                  .read(onBoardingProvider.notifier)
                  .nextPage();
                  pageController.animateToPage(
                    currentPage + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
            } else {
              Get.to(() => const LoginScreen());
            }
          },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: CColors.primary),
          child: const Icon(Icons.arrow_right_outlined)),
    );
  }
}

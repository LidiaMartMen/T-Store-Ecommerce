import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store_firebase/features/authentication/providers/onboarding_provider.dart';
import 'package:t_store_firebase/utils/utils.dart';

class OnBoardingDotNavigation extends ConsumerWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onBoardingProvider);
    //SABER SI ES LIGHT OR DARK MODE:
    final dark = CHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: CDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: CSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
              activeDotColor: dark ? CColors.light : CColors.dark,
              dotHeight: 6,
            ),
            controller: PageController(initialPage: state),
            count: 3));
  }
}

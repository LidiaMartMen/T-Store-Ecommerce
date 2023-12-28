import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:t_store_firebase/features/authentication/providers/onboarding_pageController_provider.dart';
import 'package:t_store_firebase/features/authentication/providers/onboarding_provider.dart';
import 'package:t_store_firebase/features/authentication/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageController pageController = ref.read(onBoardingPageControllerProvider);
    
    double screenWidth = CHelperFunctions.screenWidth();
    double screenHeight = CHelperFunctions.screenHeight();

    return Scaffold(
        body: Stack(
      children: [
        //Horizontal scrollable pages
        PageView(
          onPageChanged: (index) {
            ref.read(onBoardingProvider.notifier).updatePageIndicator(index);
          },
          controller: pageController,
          children: [
            OnBoardingPage(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: CImages.onBoardingImage1,
              title: CText.onBoardingTitle1,
              subtitle: CText.onBoardingSubTitle1,
              index: 1,
            ),
            OnBoardingPage(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: CImages.onBoardingImage2,
              title: CText.onBoardingTitle2,
              subtitle: CText.onBoardingSubTitle2,
              index: 2,
            ),
            OnBoardingPage(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: CImages.onBoardingImage3,
              title: CText.onBoardingTitle3,
              subtitle: CText.onBoardingSubTitle3,
              index: 3,
            ),
          ],
        ),
        // Skip button
        const OnBoardingSkip(),
        //Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),
        //Circular button
        const OnBoardingNextButton()
      ],
    ));
  }
}

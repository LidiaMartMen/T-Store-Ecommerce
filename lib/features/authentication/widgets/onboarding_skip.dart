import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:t_store_firebase/utils/utils.dart';

class OnBoardingSkip extends ConsumerWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
        top: CDeviceUtils.getAppBarHeight(),
        right: CSizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              context.go('/login-screen');
            },
            child: const Text(
              'Skip',
              style: TextStyle(color: CColors.secondary),
            )));
  }
}

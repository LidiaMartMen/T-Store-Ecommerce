import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class SuccessScreen extends StatelessWidget {
  static const String routeName = '/success-screen';

  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry padding = EdgeInsets.only(
      top: CSizes.appBarHeight,
      left: CSizes.defaultSpace,
      bottom: CSizes.defaultSpace,
      right: CSizes.defaultSpace,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: padding * 2,
          child: Column(
            children: [
              //IMAGE
              Image(
                image: AssetImage(image),
                width: CHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),
              //TITLE & SUBTITLE
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              //BUTTONS
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(CText.tContinue))),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

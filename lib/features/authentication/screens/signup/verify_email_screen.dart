import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:t_store_firebase/features/authentication/screens/signup/success_screen.dart';
import 'package:t_store_firebase/utils/utils.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //remove back arrow from appbar
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              //IMAGE
              Image(
                image: const AssetImage(CImages.deliveredEmailIllustration),
                width: CHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),
              //TITLE & SUBTITLE
              Text(
                CText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              Text(
                'hoyttejss@kajhdskhasjf.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              Text(
                CText.confirmEmailSubTitle,
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
                      onPressed: () => Get.to(() => SuccessScreen(
                            image: CImages.staticSuccessIllustration,
                            title: CText.yourAccountCreatedTitle,
                            subtitle: CText.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: const Text(CText.tContinue))),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text(CText.resendEmail))),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/utils/utils.dart';

class ResetPassword extends StatelessWidget {

  
    final String image;
    final String title;
    final String subtitle;
    final VoidCallback onPressed;

  const ResetPassword({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.clear))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(children: [
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
                      child: const Text(CText.done))),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),

              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: (){},
                      child: const Text(CText.resendEmail))),
          
        ],),
      ),
    );
  }
}
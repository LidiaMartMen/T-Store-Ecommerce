import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:t_store_firebase/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:t_store_firebase/utils/utils.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            //HEADING
            Text(
              CText.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems,
            ),
            Text(
              CText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: CSizes.spaceBtwSections * 2,
            ),

            //TEXT FIELD
            TextFormField(
              decoration: const InputDecoration(
                labelText: CText.email,
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: CSizes.spaceBtwSections,
            ),

            //SUBMIT BUTTON
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => ResetPassword(
                          image: CImages.deliveredEmailIllustration,
                          title: CText.changeYourPasswordTitle,
                          subtitle: CText.changeYourPasswordSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(CText.submit))),
            
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';                  
import 'package:t_store_firebase/features/authentication/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TITLE:
            Text(
              CText.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: CSizes.spaceBtwSections,
            ),
            //FORM:
            SignupForm(),

            const SizedBox(height: CSizes.spaceBtwSections,),

            FormDivider(dividerText: CText.orSignUpWith.capitalize!),

            const SizedBox(height: CSizes.spaceBtwSections,),

            const SocialButtons(),

          ],
        ),
      )),
    );
  }
}


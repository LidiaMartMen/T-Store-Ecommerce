import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_firebase/features/authentication/widgets/widgets.dart';
import 'package:t_store_firebase/utils/constants/image_strings.dart';
import 'package:t_store_firebase/utils/constants/sizes.dart';
import 'package:t_store_firebase/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        padding: padding,
        child: Column(
          children: [
            //LOGO, TITLE AND SUB-TITLE
            const LoginHeader(),

            //FORM:
            const LoginForm(),


            //DIVIDER:
            FormDivider(dividerText: CText.orSignInWith.capitalize!,),

            const SizedBox(height: CSizes.spaceBtwItems,),

            //FOOTER:
            const SocialButtons()
          ],
        ),
      )),
    );
  }
}


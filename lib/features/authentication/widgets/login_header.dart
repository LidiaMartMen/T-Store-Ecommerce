import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });



  @override
  Widget build(BuildContext context) {

        //SABER SI ES LIGHT OR DARK MODE:
    final dark = CHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? CImages.lightAppLogo : CImages.darkAppLogo),
        ),
        Text(
          CText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: CSizes.sm,
        ),
        Text(
          CText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}


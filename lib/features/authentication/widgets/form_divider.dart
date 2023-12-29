import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class FormDivider extends StatelessWidget {

  const FormDivider({
    super.key,
    required this.dividerText,
  });
  
  final String dividerText;
  

  @override
  Widget build(BuildContext context) {
      //SABER SI ES LIGHT OR DARK MODE:
    final dark = CHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? CColors.darkerGrey : CColors.darkGrey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: dark ? CColors.darkerGrey : CColors.darkGrey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        ))
      ],
    );
  }
}



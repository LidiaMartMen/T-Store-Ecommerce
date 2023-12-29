import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
      //SABER SI ES LIGHT OR DARK MODE:
    final dark = CHelperFunctions.isDarkMode(context);

    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: CText.firstName,
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            const SizedBox(width: CSizes.spaceBtwInputFields,),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: CText.lastName,
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
     
           
            
          ],
        ),
               const SizedBox(height: CSizes.spaceBtwInputFields,),
             TextFormField(
                decoration: const InputDecoration(
                    labelText: CText.username,
                    prefixIcon: Icon(Icons.person)),
              ),
              const SizedBox(height: CSizes.spaceBtwInputFields,),
               TextFormField(
                decoration: const InputDecoration(
                    labelText: CText.email,
                    prefixIcon: Icon(Icons.email)),
              ),
              const SizedBox(height: CSizes.spaceBtwInputFields,),
               TextFormField(
                decoration: const InputDecoration(
                    labelText: CText.phoneNo,
                    prefixIcon: Icon(Icons.phone)),
              ),
              const SizedBox(height: CSizes.spaceBtwInputFields,),
               TextFormField(
                decoration: const InputDecoration(
                    labelText: CText.password,
                    prefixIcon: Icon(Icons.password_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    ),
                    
              ),
              const SizedBox(height: CSizes.spaceBtwInputFields,),
              //CHECKBOX:
    Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {})),
          
           Text.rich(TextSpan(children: [
            TextSpan(text: '${CText.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${CText.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? CColors.white : CColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? CColors.white : CColors.primary,
            )),
            TextSpan(text: '${CText.and} ', style: Theme.of(context).textTheme.bodySmall),
             TextSpan(text: '${CText.termsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? CColors.white : CColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? CColors.white : CColors.primary,
            )),
           ])),
      ],
    ),
      const SizedBox(height: CSizes.spaceBtwSections,),
      //SIGN UP BUTTON:
         SizedBox(
          width: double.infinity,
           child: ElevatedButton(
              onPressed: (){}, 
              child: const Text(CText.createAccount)),
         ),
      ],
    ));
  }
}

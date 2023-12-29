import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: CSizes.spaceBtwSections),
      child: Column(
        children: [
          //EMAIL:
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: CText.email,
            ),
          ),
          const SizedBox(
            height: CSizes.spaceBtwInputFields,
          ),
          //PASSWORD:
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password_outlined),
              labelText: CText.password,
              suffixIcon: Icon(Icons.contact_emergency),
            ),
          ),
          const SizedBox(
            height: CSizes.spaceBtwInputFields / 2,
          ),
          //REMEMBER ME AND FORGET PASSWORD:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(CText.rememberMe),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    CText.forgetPassword,
                    style: TextStyle(color: CColors.accent),
                  )),
            ],
          ),
          const SizedBox(
            height: CSizes.spaceBtwSections,
          ),

          //SING IN BUTTON: full width (Sizedbox)
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(CText.signIn))),
          const SizedBox(
            height: CSizes.spaceBtwItems,
          ),
          //CREATE ACOUNT BUTTON
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(CText.createAccount))),
        ],
      ),
    ));
  }
}

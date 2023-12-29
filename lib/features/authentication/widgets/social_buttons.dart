import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(color: CColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: (){},
              icon: const Image(
                width: CSizes.iconMd,
                height: CSizes.iconMd,
                image: AssetImage(CImages.google)),
              ),
            ),
            const SizedBox(width: CSizes.spaceBtwItems,),
            Container(
            decoration: BoxDecoration(
              border: Border.all(color: CColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: (){},
              icon: const Image(
                width: CSizes.iconMd,
                height: CSizes.iconMd,
                image: AssetImage(CImages.facebook)),
              ),
            ),
            const SizedBox(width: CSizes.spaceBtwItems,),
            Container(
            decoration: BoxDecoration(
              border: Border.all(color: CColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: (){},
              icon: const Image(
                width: CSizes.iconMd,
                height: CSizes.iconMd,
                image: AssetImage(CImages.instagram)),
              ),
            ),
          ],
    );
  }
}


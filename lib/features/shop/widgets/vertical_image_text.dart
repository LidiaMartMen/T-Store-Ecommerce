import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CVerticalImageText extends StatelessWidget {
  final Function()? onTap;
  final String img;

  const CVerticalImageText({
    super.key,
    this.onTap,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(CSizes.sm),
                decoration: BoxDecoration(
                  color: CColors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                    color: CColors.white,
                  ),
                )),
            const SizedBox(height: CSizes.spaceBtwItems / 2),
            Text(
              'Shoes',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: CColors.white),
            )
          ],
        ),
      ),
    );
  }
}

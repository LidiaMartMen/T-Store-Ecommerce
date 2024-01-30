import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/constants/sizes.dart';

class CRatingAndShare extends StatelessWidget {
  const CRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          //RATING:
          children: [
            const Icon(
              Icons.star_rate_outlined,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              width: CSizes.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(199)'),
            ]))
          ],
        ),
        //SHARE BUTTON:
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: CSizes.iconMd,
            ))
      ],
    );
  }
}

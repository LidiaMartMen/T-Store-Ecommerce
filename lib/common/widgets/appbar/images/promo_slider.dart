import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:t_store_firebase/common/widgets/appbar/images/rounded_images.dart';
import 'package:t_store_firebase/features/authentication/providers/carousel_index_provider.dart';
import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/features/widgets/circular_container.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CPromoSlider extends ConsumerWidget {
  final List<String> banners;

  const CPromoSlider({
    super.key,
    required this.banners,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            CarouselSlider(
                items: banners
                    .map(
                      (url) => CRoundedImage(imageUrl: url),
                    )
                    .toList(),
                options: CarouselOptions(
                    viewportFraction: 1,
                    onPageChanged: (index, _) {
                      ref
                          .read(carouselIndexProvider.notifier)
                          .updateIndex(index);
                    })),
            const SizedBox(
              height: CSizes.spaceBtwItems,
            ),
            Center(
              child: Consumer(
                builder: ((context, ref, child) {
                  final currentIndex = ref.watch(carouselIndexProvider);
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < banners.length; i++)
                        CircularContainer(
                          margin: const EdgeInsets.only(right: 10),
                          width: 20,
                          height: 4,
                          backgroundColor: i == currentIndex
                              ? CColors.primary
                              : CColors.darkGrey,
                        ),
                    ],
                  );
                }),
              ),
            )
          ],
        ));
  }
}

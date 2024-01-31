import 'package:get/get.dart';
import 'package:t_store_firebase/features/shop/screens/sub_category/sub_category.dart';
import 'package:t_store_firebase/features/shop/widgets/vertical_image_text.dart';
import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CHomeCategories extends StatelessWidget {
  const CHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: CSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular categories',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: CSizes.spaceBtwItems,
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((_, index) {
                  return CVerticalImageText(
                    onTap: () => Get.to(() => const SubCategoriesScreen()),
                    img: CImages.shoeIcon,
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

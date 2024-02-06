import 'package:t_store_firebase/common/widgets/products/products/product_cards/brand_showcase.dart';
import 'package:t_store_firebase/common/widgets/products/products/product_cards/product_card_vertical.dart';
import 'package:t_store_firebase/common/widgets/layout/grid_layout.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../../features/shop/widgets/widgets.dart';

class CCategoryTab extends StatelessWidget {
  const CCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              children: [
                //brand
                const CBrandShowcase(
                  images: [
                    CImages.productImage3,
                    CImages.productImage2,
                    CImages.productImage1,
                  ],
                ),
                const CBrandShowcase(
                  images: [
                    CImages.productImage3,
                    CImages.productImage2,
                    CImages.productImage1,
                  ],
                ),
                const SizedBox(
                  height: CSizes.spaceBtwItems,
                ),
                //Products
                CSectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: CSizes.spaceBtwItems,
                ),
                CGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const CProductCardVertical()),
                const SizedBox(
                  height: CSizes.spaceBtwSections,
                ),
              ],
            ),
          ),
        ]);
  }
}

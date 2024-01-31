import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:t_store_firebase/common/widgets/images/promo_slider.dart';

import 'package:t_store_firebase/common/widgets/layout/grid_layout.dart';

import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/features/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../common/widgets/appbar/products/product_cards/product_card_vertical.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //Customshape:
          const PrimaryHeaderContainer(
            height: 400,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CHomeAppBar(),
              SizedBox(
                height: CSizes.spaceBtwSections,
              ),

              //SEARCH BAR:
              CSearchBar(
                text: 'Search',
              ),
              SizedBox(
                height: CSizes.spaceBtwSections,
              ),

              //CATEGORIES:
              CHomeCategories()
            ]),
          ),

          //Body:
          Column(
            children: [
              const CPromoSlider(
                banners: [
                  CImages.promoBanner1,
                  CImages.promoBanner2,
                  CImages.promoBanner3,
                ],
              ),
              CGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const CProductCardVertical(),
              ),
              //((_, index) => )
            ],
          )
        ],
      )),
    );
  }
}

import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/appbar/products/product_cards/custom_category_tab.dart';
import 'package:t_store_firebase/common/widgets/appbar/tabbar.dart';
import 'package:t_store_firebase/features/shop/screens/store/widget/custom_brand_card.dart';
import 'package:t_store_firebase/features/shop/widgets/section_heading.dart';
import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';
import '../../../../common/widgets/layout/grid_layout.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CCartCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: CHelperFunctions.isDarkMode(context)
                      ? CColors.black
                      : CColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(CSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: CSizes.spaceBtwItems,
                        ),
                        //SEARCH BAR
                        const CSearchBar(
                          text: 'Search',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: CSizes.spaceBtwSections,
                        ),
                        //featured brands
                        CSectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: CSizes.spaceBtwItems / 1.5,
                        ),
                        CGridLayout(
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const CBrandCard(
                              showBorder: true,
                            );
                          },
                          itemCount: 4,
                        )
                      ],
                    ),
                  ),
                  bottom: const CTabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ])),
            ];
          },
          body: const TabBarView(children: [
            CCategoryTab(),
            CCategoryTab(),
            CCategoryTab(),
            CCategoryTab(),
            CCategoryTab(),
          ]),
        ),
      ),
    );
  }
}

import 'package:t_store_firebase/common/widgets/layout/grid_layout.dart';
import 'package:t_store_firebase/common/widgets/products/products/product_cards/product_card_vertical.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../../../features/shop/widgets/widgets.dart';

class CSortableProducts extends StatelessWidget {
  const CSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //DROPDOWN:
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Icons.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higuer Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: CSizes.spaceBtwSections),
        //PRODUCTS:
        CGridLayout(
            itemCount: 6,
            itemBuilder: (_, index) => const CProductCardVertical())
      ],
    );
  }
}

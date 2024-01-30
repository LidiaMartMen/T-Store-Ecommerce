import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/features/widgets/custom_widgets/curved_edge.dart';
import 'package:t_store_firebase/utils/utils.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_images.dart';

class CProductImageSlider extends StatelessWidget {
  const CProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? CColors.darkerGrey : CColors.light,
        child: Stack(children: [
          //main image:
          const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(CSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(CImages.productImage5))),
              )),
          //Image slider:
          Positioned(
            right: 0,
            bottom: 30,
            left: CSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (_, __) =>
                    const SizedBox(width: CSizes.spaceBtwItems),
                itemCount: 6,
                itemBuilder: (_, index) => CRoundedImage(
                    width: 80,
                    backgroundColor: dark ? CColors.dark : CColors.white,
                    border: Border.all(color: CColors.primary),
                    padding: const EdgeInsets.all(CSizes.sm),
                    imageUrl: CImages.productImage10),
              ),
            ),
          ),
          //Appbar Icons:
          const CAppBar(showBackArrow: true, actions: [
            CCircularIcon(
              icon: Icons.favorite,
              color: Colors.red,
            )
          ])
        ]),
      ),
    );
  }
}

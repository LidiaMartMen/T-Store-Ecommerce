import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CVerticalImageText extends StatelessWidget {
  const CVerticalImageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
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
                  return Padding(
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
                           child: const Center(
                            child: Image(image: AssetImage(CImages.shoeIcon), fit: BoxFit.cover, color: CColors.white,),
                            )
                           ),
                           const SizedBox(height: CSizes.spaceBtwItems/2),
                           Text('Shoes', style: Theme.of(context).textTheme.labelMedium!.apply(color: CColors.white),)
                       ],
                     ),
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

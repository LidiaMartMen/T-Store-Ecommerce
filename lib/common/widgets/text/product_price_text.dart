import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CProductPrice extends StatelessWidget {
  final String currencySign, price;
  final int maxLines;

  const CProductPrice({
    super.key,
    required this.currencySign,
    required this.price,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      price + currencySign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style:
          Theme.of(context).textTheme.labelLarge!.apply(color: CColors.black),
    );
  }
}

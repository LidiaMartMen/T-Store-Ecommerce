import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CProductPrice extends StatelessWidget {
  final String currencySign, price;
  final int maxLines;
  final bool lineThrough;
  final bool isLarge;

  const CProductPrice({
    super.key,
    this.currencySign = '€',
    required this.price,
    this.maxLines = 1,
    this.lineThrough = false,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      price + currencySign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}

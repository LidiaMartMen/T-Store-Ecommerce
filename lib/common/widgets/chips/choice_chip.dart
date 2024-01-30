import 'package:t_store_firebase/features/widgets/circular_container.dart';
import 'package:t_store_firebase/utils/utils.dart';

import '../../../features/shop/widgets/widgets.dart';

class CChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  const CChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: CHelperFunctions.getColor(text) != null
            ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? CColors.white : null),
        avatar: CHelperFunctions.getColor(text) != null
            ? CircularContainer(
                width: 50,
                height: 50,
                backgroundColor: CHelperFunctions.getColor(text)!,
              )
            : null,
        shape: CHelperFunctions.getColor(text) != null
            ? const CircleBorder()
            : null,
        labelPadding: CHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        padding: CHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        // ignore: prefer_null_aware_operators
        backgroundColor: CHelperFunctions.getColor(text) != null
            ? CHelperFunctions.getColor(text)!
            : null,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CCartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? iconColor;

  const CCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: CColors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: CColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}

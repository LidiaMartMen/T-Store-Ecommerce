import 'package:flutter/material.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CHomeAppBar extends StatelessWidget {
  const CHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CAppBar(
      title: Column(
        children: [
          Text(
            CText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: CColors.grey),
          ),
          Text(
            CText.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: CColors.white),
          ),
        ],
      ),
      actions: [CCartCounterIcon(onPressed: (){}, iconColor: CColors.white,)],
    );
  }
}


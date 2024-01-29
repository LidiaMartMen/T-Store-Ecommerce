import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CGridLayout extends StatelessWidget {
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  const CGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: CSizes.gridViewSpacing,
            mainAxisSpacing: CSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent,
            crossAxisCount: 2),
        itemBuilder: itemBuilder);
  }
}

import 'package:flutter/material.dart';
import 'package:t_store_firebase/features/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  final double? height;

  const PrimaryHeaderContainer({
    super.key,
    required this.child,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: CColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CircularContainer(
                      backgroundColor: CColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 150,
                  right: -150,
                  child: CircularContainer(
                      backgroundColor: CColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

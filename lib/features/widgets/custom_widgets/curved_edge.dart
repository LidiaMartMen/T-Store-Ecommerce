import 'package:flutter/material.dart';
import 'package:t_store_firebase/features/widgets/widgets.dart';


class CurvedEdgeWidget extends StatelessWidget {

          final Widget? child;

          
  const CurvedEdgeWidget({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    



    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}

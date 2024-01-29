import 'package:flutter/material.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: CColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
  static final horizontalProductShadow = BoxShadow(
    color: CColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}

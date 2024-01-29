import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarouselIndexNotifier extends StateNotifier<int> {
  CarouselIndexNotifier() : super(0);

  void updateIndex(int index) {
    state = index;
  }
}

final carouselIndexProvider = StateNotifierProvider<CarouselIndexNotifier, int>(
  (ref) => CarouselIndexNotifier(),
);

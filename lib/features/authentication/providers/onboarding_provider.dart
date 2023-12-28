import 'package:flutter_riverpod/flutter_riverpod.dart';

//CREAMOS EL STATE:
class OnBoardingState {
  final int page;

  const OnBoardingState({this.page = 0});

//CREAMOS EL COPYWITH PARA CREAR UNA COPIA DEL ESTADO:
  OnBoardingState copyWith({
    int? page,
  }) =>
      OnBoardingState(page: page ?? this.page);

  @override
  List<Object> get props => [page];
}

//NOTIFIER: notifica tu UI de que tu data ha cambiado:
class OnBoardingNotifier extends StateNotifier<int> {
  //default value = 0
  OnBoardingNotifier() : super(0);

//MÉTODO PAGE INDICATOR:
  void pageChanged(int page) {
    state = page;
  }

  void updatePageIndicator(int page) {
    state = page;
  }

//MÉTODO NEXTPAGE:
  void nextPage() {
    state = state + 1;
  }
}

//PROVIDER:
final onBoardingProvider =
    StateNotifierProvider<OnBoardingNotifier, int>((ref) {
  return OnBoardingNotifier();
});

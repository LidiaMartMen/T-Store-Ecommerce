//CREAMOS EL STATE:
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedIndexState {
  final int index;

  const SelectedIndexState({this.index = 0});

//CREAMOS EL COPYWITH PARA CREAR UNA COPIA DEL ESTADO:
  SelectedIndexState copyWith({
    int? index,
  }) =>
      SelectedIndexState(index: index ?? this.index);
}

//NOTIFIER: notifica tu UI de que tu data ha cambiado:
class SelectedIndexNotifier extends StateNotifier<int> {
  //default value = 0
  SelectedIndexNotifier() : super(0);

//MÉTODO ACTUALIZAR INDEX:
  void updateIndex(int index) {
    state = index;
  }
}

//PROVIDER:
final selectedIndexProvider =
    StateNotifierProvider<SelectedIndexNotifier, int>((ref) {
  return SelectedIndexNotifier();
});

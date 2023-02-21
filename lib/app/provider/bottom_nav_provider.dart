import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomNavNotifier extends StateNotifier<int> {
  BottomNavNotifier() : super(0);

  void setPosition(int value) {
    state = value;
  }
}

final bottomNavProvider = StateNotifierProvider<BottomNavNotifier, int>((ref) {
  return BottomNavNotifier();
});


// class BottomNavNotifier extends ChangeNotifier {
//   int _index = 0;
//   int get index => _index;
//   void setPosition(int value) {
//     _index = value;
//     notifyListeners();
//   }
// }

// final bottomNavProviderProvider =
//     ChangeNotifierProvider<BottomNavNotifier>((_) => BottomNavNotifier());
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyComplexProvider extends StateNotifier<String> {
  MyComplexProvider() : super('reza');

  void changeName(String name) {
    if (name == state) {
      state = 'equal';
    } else {
      state = name;
    }
  }
}

var complexProvider = StateNotifierProvider<MyComplexProvider, String>(
  (ref) {
    return MyComplexProvider();
  },
);

import 'package:chatl1/pages/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changePage(int index) async{
    state.index.value = index;
  }
}

// class WelcomeController extends GetxController {
//   RxInt _index = 0.obs;

//   int get index => _index.value;

//   void onPageChange(int newIndex) {
//     print('Page changed to: $newIndex');
//     _index.value = newIndex;
//   }
// }
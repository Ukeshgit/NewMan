import 'package:get/get.dart';

class NumberController extends GetxController {
  RxInt number = 0.obs;
  void IncreaseNumber() {
    number++;
  }

  void DecreaseNumber() {
    number--;
  }
}

import 'package:get/get_state_manager/get_state_manager.dart';

class OnBoardingController extends GetxController {
  int onBoardingPageIndex = 0;

  void onPageChange(int index) {
    onBoardingPageIndex = index;
    update(['dotUpdate']);
  }
}

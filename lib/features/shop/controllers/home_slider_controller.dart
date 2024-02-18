import 'package:get/get.dart';

class HomeSliderController extends GetxController {
  static HomeSliderController get instance => Get.find();
  final sliderCurrentIndex = 1.obs;

  void updateSliderIndicator(index) {
    sliderCurrentIndex.value = index;
  }
}

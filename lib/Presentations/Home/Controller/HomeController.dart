import 'package:get/get.dart';

class HomeController extends GetxController {
  var isExpanded1 = false.obs;
  var isExpanded2 = false.obs;
  var isExpanded3 = false.obs;
  var isExpanded4 = false.obs;
  var isExpanded5 = false.obs;
  var isExpanded6 = false.obs;

  void toggleExpand1() {
    isExpanded1.value = !isExpanded1.value;
  }

  void toggleExpand2() {
    isExpanded2.value = !isExpanded2.value;
  }

  void toggleExpand3() {
    isExpanded3.value = !isExpanded3.value;
  }

  void toggleExpand4() {
    isExpanded4.value = !isExpanded4.value;
  }

  void toggleExpand5() {
    isExpanded5.value = !isExpanded5.value;
  }

  void toggleExpand6() {
    isExpanded6.value = !isExpanded6.value;
  }
}

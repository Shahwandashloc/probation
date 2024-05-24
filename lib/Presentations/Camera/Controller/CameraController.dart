import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CameraControllers extends GetxController {
  QRViewController? controller;
  RxBool flashStatus = false.obs;
  RxBool scanningEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    getFlashStatus();
  }

  Future<void> toggleFlash() async {
    await controller?.toggleFlash();
    getFlashStatus();
  }

  Future<void> getFlashStatus() async {
    bool status = await controller?.getFlashStatus() ?? false;
    flashStatus.value = status;
  }
}

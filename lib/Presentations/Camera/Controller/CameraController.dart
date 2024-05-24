import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:camera/camera.dart';

class CameraControllers extends GetxController {
  CameraController? controller;
  RxBool flashStatus = false.obs;
  RxBool isCameraInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isNotEmpty) {
        controller = CameraController(cameras[0], ResolutionPreset.high);
        await controller?.initialize();
        isCameraInitialized.value = true;
        getFlashStatus();
      } else {
        print("No cameras available.");
      }
    } catch (e) {
      print("Error initializing camera: $e");
    }
  }

  Future<void> toggleFlash() async {
    try {
      if (controller?.value.flashMode == FlashMode.off) {
        await controller?.setFlashMode(FlashMode.torch);
      } else {
        await controller?.setFlashMode(FlashMode.off);
      }
      getFlashStatus();
    } catch (e) {
      print("Error toggling flash: $e");
    }
  }

  void getFlashStatus() {
    flashStatus.value = controller?.value.flashMode == FlashMode.torch;
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

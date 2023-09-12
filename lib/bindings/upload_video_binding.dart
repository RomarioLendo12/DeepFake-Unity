import 'package:deepfake/controllers/upload_video_controller.dart';
import 'package:get/get.dart';

class UploadVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => UploadVideoController(),
    );
  }
}

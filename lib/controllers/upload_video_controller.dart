import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import '../views/mobile/generate_video_page.dart';

class UploadVideoController extends GetxController {
  List avatar = [
    {'name': 'aldi taher', 'image': 'aldi_avatar.png'},
    {'name': 'dekan fatek', 'image': 'dekan_avatar.png'},
    {'name': 'ryan reynolds', 'image': 'ryan_avatar.png'},
  ];

  List<int> listIndex = [0, 1, 2, 3];

  RxInt selectedIndex = 0.obs;

  VideoPlayerController? _controller;
  final ImagePicker _imagePicker = ImagePicker();

  Future pickVideo() async {
    final XFile? pickedFile =
        await _imagePicker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      _controller = VideoPlayerController.file(
        File(pickedFile.path),
      );
      await _controller!.initialize();
      Get.to(() => const GenerateVideoPage(), arguments: _controller);
      update();
    }
  }

  @override
  void onClose() {
    super.onClose();
    _controller?.dispose();
  }
}

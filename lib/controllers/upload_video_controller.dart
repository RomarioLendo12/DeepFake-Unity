import 'package:get/get.dart';

class UploadVideoController extends GetxController {
  List avatar = [
    {'name': 'aldi taher', 'image': 'aldi_avatar.png'},
    {'name': 'dekan fatek', 'image': 'dekan_avatar.png'},
    {'name': 'ryan reynolds', 'image': 'ryan_avatar.png'},
  ];

  List<int> listIndex = [0, 1, 2, 3];

  RxInt selectedIndex = 0.obs;
}

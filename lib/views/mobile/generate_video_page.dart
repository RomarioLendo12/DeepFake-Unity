import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class GenerateVideoPage extends StatelessWidget {
  const GenerateVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Your Video',
              style: mobileH3.copyWith(color: brand900),
            ),
            const SizedBox(
              height: 31,
            ),
            Container(
              margin: const EdgeInsets.only(top: 31, left: 16, right: 16),
              child: Get.arguments != null
                  ? AspectRatio(
                      aspectRatio: Get.arguments.value.aspectRatio,
                      child: VideoPlayer(Get.arguments!),
                    )
                  : const Text('Tidak ada video'),
            )
          ],
        ),
      ),
    );
  }
}

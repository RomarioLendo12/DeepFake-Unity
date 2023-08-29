import 'package:deepfake/views/avatar_description_aldi.dart';
import 'package:deepfake/views/avatar_description_dekan.dart';
import 'package:deepfake/views/avatar_description_ryan.dart';
import 'package:deepfake/views/upload_video_dekstop.dart';
import 'package:deepfake/views/landing_page_desktop.dart';
import 'package:deepfake/views/upload_video_page.dart';
import 'package:deepfake/views/your_video.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/landing_page.dart';

void main() => runApp(const DeepFakeApp());

class DeepFakeApp extends StatelessWidget {
  const DeepFakeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPageDesktop(),
    );
  }
}

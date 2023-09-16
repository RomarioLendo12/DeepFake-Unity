import 'package:deepfake/components/popup_menu_desktop.dart';
import 'package:deepfake/views/avatar_description_dekan.dart';
import 'package:deepfake/views/desktop/avatar_description_ryan.dart';
import 'package:deepfake/views/desktop/information_page_desktop.dart';
import 'package:deepfake/views/desktop/our_team.dart';
import 'package:deepfake/views/desktop/result_page.dart';
import 'package:deepfake/views/desktop/upload_video_dekstop.dart';
import 'package:deepfake/views/desktop/landing_page_desktop.dart';
import 'package:deepfake/views/upload_video_page.dart';
import 'package:deepfake/views/desktop/your_video.dart';
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

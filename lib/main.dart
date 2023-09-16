import 'package:deepfake/views/desktop/landing_page_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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

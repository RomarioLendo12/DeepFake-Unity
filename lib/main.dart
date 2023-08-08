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
      home: LandingPage(),
    );
  }
}

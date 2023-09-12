import 'package:deepfake/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const DeepFakeApp());

class DeepFakeApp extends StatelessWidget {
  const DeepFakeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initRoute,
      getPages: AppRoutes.routes,
    );
  }
}

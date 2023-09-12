import 'package:deepfake/bindings/upload_video_binding.dart';
import 'package:deepfake/routes/routes_name.dart';
import 'package:deepfake/views/avatar_information_page.dart';
import 'package:deepfake/views/deepfake_team_page.dart';
import 'package:deepfake/views/information_page.dart';
import 'package:deepfake/views/landing_page.dart';
import 'package:deepfake/views/upload_video_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const initRoute = RoutesName.landingPage;
  static final routes = [
    GetPage(
      name: initRoute,
      page: () => const LandingPage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: RoutesName.informationPage,
      page: () => const InformationPage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: RoutesName.teamPage,
      page: () => const DeepfakeTeamPage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: RoutesName.uploadPage,
      page: () => const UploadVideoPage(),
      binding: UploadVideoBinding(),
      transition: Transition.fade,
    ),
    GetPage(
      name: RoutesName.avatarInfoPage,
      page: () => const AvatarInformationPage(),
      transition: Transition.fade,
    ),
  ];
}

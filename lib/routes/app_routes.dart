import 'package:deepfake/bindings/upload_video_binding.dart';
import 'package:deepfake/routes/routes_name.dart';
import 'package:get/get.dart';

import '../views/mobile/avatar_information_page.dart';
import '../views/mobile/deepfake_team_page.dart';
import '../views/mobile/information_page.dart';
import '../views/mobile/landing_page.dart';
import '../views/mobile/upload_video_page.dart';

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

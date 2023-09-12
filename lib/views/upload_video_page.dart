import 'package:deepfake/components/custom_button_widget.dart';
import 'package:deepfake/components/popup_menu_widget.dart';
import 'package:deepfake/controllers/upload_video_controller.dart';
import 'package:deepfake/routes/routes_name.dart';
import 'package:deepfake/utility.dart';
import 'package:deepfake/views/deepfake_team_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadVideoPage extends GetView<UploadVideoController> {
  const UploadVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 7,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/df-logo.png',
              width: 132,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return PopupMenuWidget(
                      contents: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color(0XFF847eed).withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Login',
                              style: bodyText14.copyWith(
                                  color: brand900, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color(0XFF847eed).withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Register',
                              style: bodyText14.copyWith(
                                  color: brand900, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color(0XFF847eed).withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Home',
                              style: bodyText14.copyWith(
                                  color: brand900, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                            Get.to(() => const DeepfakeTeamPage(),
                                transition: Transition.fadeIn);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: const Color(0XFF847eed).withOpacity(0.7),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Our Team',
                                style: bodyText14.copyWith(
                                    color: brand900,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Icon(
                Icons.menu,
                color: brand800,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 36,
              ),
              Obx(
                () => controller.selectedIndex.value == 0
                    ? Text(
                        'Choose Your Avatar',
                        style: mobileH3.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: brand900),
                      )
                    : controller.selectedIndex.value == 1
                        ? AvatarWidget(
                            image: 'aldi',
                            name: 'Aldi Taher',
                            navigator: () {
                              Get.toNamed(RoutesName.avatarInfoPage,
                                  arguments: [
                                    'Aldi Taher',
                                    'Comedia',
                                    "Aldi Taher is an Indonesian figure known for his diverse contributions. He's recognized for his involvement in various fields, from entertainment and entrepreneurship to philanthropy. With a multifaceted career, Aldi Taher has made a notable impact in Indonesia.",
                                    'aldi'
                                  ]);
                            },
                          )
                        : controller.selectedIndex.value == 2
                            ? AvatarWidget(
                                image: 'dekan',
                                name: 'Prof. Dr. Ir. Fabian J. Manoppo, M.Agr',
                                navigator: () {
                                  Get.toNamed(RoutesName.avatarInfoPage,
                                      arguments: [
                                        'Prof. Dr. Ir. Fabian J. Manoppo, M.Agr',
                                        'Dean of Faculty of Engineering UNSRAT',
                                        "Prof. Dr. Ir. Fabian Johanes Manoppo, M.Agr, is a distinguished academic leader who holds the esteemed position of Dean at the Faculty of Engineering, Universitas Sam Ratulangi. With a remarkable blend of academic excellence, leadership acumen, and a strong commitment to advancing engineering education, he has solidified his reputation as a visionary in the realm of higher education.",
                                        'dekan'
                                      ]);
                                },
                              )
                            : AvatarWidget(
                                image: 'ryan',
                                name: 'Ryan Reynolds',
                                navigator: () {
                                  Get.toNamed(RoutesName.avatarInfoPage,
                                      arguments: [
                                        'Ryan Reynolds',
                                        'Canadian-American actor',
                                        "Ryan Rodney Reynolds is a Canadian-born American actor, film producer, and businessman. He began his career starring in the Canadian teen soap opera Hillside, and had minor roles before landing the lead role on the sitcom Two Guys and a Girl between 1998 and 2001.",
                                        'ryan'
                                      ]);
                                },
                              ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: controller.avatar
                      .asMap()
                      .entries
                      .map(
                        (e) => GestureDetector(
                          onTap: () =>
                              controller.selectedIndex.value = e.key + 1,
                          child: Obx(
                            () => Stack(
                              children: [
                                Container(
                                  width: 84,
                                  height: 84,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/${e.value['image']}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                controller.selectedIndex.value == 0
                                    ? const SizedBox()
                                    : controller.selectedIndex.value ==
                                            e.key + 1
                                        ? Container(
                                            width: 84,
                                            height: 84,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                            child: const Icon(
                                              Icons
                                                  .check_circle_outline_outlined,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          )
                                        : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Text(
                'Upload Your Video',
                textAlign: TextAlign.center,
                style: mobileH3.copyWith(color: brand900),
              ),
              const SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 41.5),
                child: Text(
                  'Single face only, maximum video size of 50MB, maximum duration of 5 minutes, and acceptable formats include MP4, AVI, MOV, and MKV.',
                  textAlign: TextAlign.center,
                  style: bodyText12.copyWith(color: neutral500),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Obx(
                () => controller.selectedIndex.value == 0
                    ? CustomButtonWidget(
                        buttonName: 'Upload Video',
                        width: 136,
                        height: 44,
                        callback: () {},
                        buttonColor: neutral100,
                        textColor: neutral400,
                      )
                    : CustomButtonWidget(
                        buttonName: 'Upload Video',
                        width: 136,
                        height: 44,
                        callback: () {},
                        buttonColor: brand600,
                        textColor: Colors.white,
                      ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Some Results From UNITY DeepFake',
                textAlign: TextAlign.center,
                style: bodyText12.copyWith(
                    fontWeight: FontWeight.w600, color: brand400),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: AssetImage('assets/1.gif'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: AssetImage('assets/1.gif'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: AssetImage('assets/1.gif'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: AssetImage('assets/1.gif'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 37),
                width: double.infinity,
                height: 112,
                color: neutral900,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/ig.png',
                            width: 18,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Image.asset(
                            'assets/linkedin.png',
                            width: 18,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Image.asset(
                            'assets/facebook.png',
                            width: 18,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          '© Copyright UNSRAT IT Community All rights reserved.',
                          textAlign: TextAlign.center,
                          style: bodyText12.copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    required this.image,
    required this.name,
    required this.navigator,
  });

  final String image, name;
  final VoidCallback navigator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: mobileH3.copyWith(color: brand900),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 18),
          width: 144,
          height: 144,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/${image}_avatar.png'),
                fit: BoxFit.cover),
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: navigator,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'More details',
                  style: bodyText14.copyWith(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 10,
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

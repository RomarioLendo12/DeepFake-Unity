import 'package:deepfake/components/popup_menu_widget.dart';
import 'package:deepfake/utility.dart';
import 'package:deepfake/views/information_page.dart';
import 'package:deepfake/views/upload_video_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_button_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                              'Our Team',
                              style: bodyText14.copyWith(
                                  color: brand900, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: Icon(
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
              SizedBox(
                width: double.infinity,
                height: 520,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/1.gif',
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 58),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0XFF000000).withOpacity(0.4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Where reality meets a funhouse mirror, and the result is a carnival of confusion!',
                            textAlign: TextAlign.center,
                            style: gifText,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          OutlinedButton(
                              onPressed: () {
                                Get.to(() => const InformationPage(),
                                    transition: Transition.fadeIn);
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.white),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 6),
                                child: Text(
                                  'LEARN MORE ABOUT DEEPFAKE',
                                  textAlign: TextAlign.center,
                                  style: bodyText12.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              Image.asset(
                'assets/exclamation.png',
                width: 26,
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                'About DeepFake',
                style: bodyText16.copyWith(
                    color: neutral700, fontWeight: FontWeight.w600),
              ),
              const AboutDeepfakeWidget(
                  image: '1 1.png',
                  description:
                      'Deepfakes can be used to create highly convincing fake videos or audios of public figures.',
                  imageWidth: 81),
              const AboutDeepfakeWidget(
                  image: '2 1.png',
                  description:
                      'Deepfake technology poses a significant threat to personal privacy.',
                  imageWidth: 81),
              const AboutDeepfakeWidget(
                  image: '3 2.png',
                  description:
                      'Actors, politicians, or any person can fall victim to deepfake manipulation.',
                  imageWidth: 81),
              const AboutDeepfakeWidget(
                  image: '4 3.png',
                  description:
                      'Scammers may use deepfake technology to trick individuals.',
                  imageWidth: 81),
              const AboutDeepfakeWidget(
                  image: '5 2.png',
                  description:
                      'The rise of deepfakes poses challenges for the legal system to establish accountability and enforce laws against their misuse.',
                  imageWidth: 81),
              const SizedBox(
                height: 50,
              ),
              Text(
                'How to made one?',
                style: mobileH3.copyWith(color: brand900),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 16, right: 16, top: 24, bottom: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: brand900),
                width: double.infinity,
                height: 205,
                child: Center(
                  child: Text(
                    'Video',
                    style: mobileH2.copyWith(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 32, right: 32, bottom: 15),
                child: Image.asset(
                  'assets/sbjs 1.png',
                  width: double.infinity,
                ),
              ),
              CustomButtonWidget(
                buttonName: 'Create Video',
                width: 134,
                height: 44,
                callback: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return PopupMenuWidget(contents: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/exclamation.png',
                                width: 22,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Warning',
                                style: bodyText16.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: neutral700),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'This is a call to action for users and creators alike. As users, we must exercise discernment, fact-check sources, and question the veracity of content before sharing. Responsible creators, on the other hand, must uphold ethical standards and refrain from using deepfakes for malicious purposes.',
                            style: bodyText12,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomButtonWidget(
                              buttonName: 'Agree',
                              width: 80,
                              height: 44,
                              callback: () {
                                Get.to(() => const UploadVideoPage(),
                                    transition: Transition.fadeIn);
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: rose600),
                            ),
                            child: Text(
                              'Disagree',
                              style: bodyText16.copyWith(
                                  fontWeight: FontWeight.w600, color: rose600),
                            ),
                          ),
                        ]);
                      });
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
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

class AboutDeepfakeWidget extends StatelessWidget {
  const AboutDeepfakeWidget(
      {super.key,
      required this.image,
      required this.description,
      required this.imageWidth});

  final String image;
  final String description;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 16, right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: neutral300),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/$image',
            width: imageWidth,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: bodyText12.copyWith(
                fontSize: 11, fontWeight: FontWeight.w400, color: neutral500),
          ),
        ],
      ),
    );
  }
}

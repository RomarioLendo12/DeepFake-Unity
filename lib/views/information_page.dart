import 'package:deepfake/components/popup_menu_widget.dart';
import 'package:deepfake/utility.dart';
import 'package:deepfake/views/deepfake_team_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

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
                height: 28,
              ),
              Text(
                'What is DeepFake?',
                textAlign: TextAlign.center,
                style: mobileH3.copyWith(color: brand900),
              ),
              const SizedBox(
                height: 30,
              ),
              const InformationWidget(
                  slimeImage: 'slime',
                  information:
                      "Deepfake technology involves using advanced artificial intelligence, specifically deep learning algorithms, to create highly realistic fake videos or images. It seamlessly swaps one person's face or voice onto another's, often with astonishing accuracy."),
              const InformationWidget(
                  slimeImage: 'slime2',
                  information:
                      "This technology has both creative and concerning aspects. Positively, it enables new forms of artistic expression and entertainment, letting creators bring historical figures to life or place actors in unexpected roles."),
              const InformationWidget(
                  slimeImage: 'slime3',
                  information:
                      "However, the technology's ability to manipulate and deceive also raises significant ethical concerns. Malicious use could lead to the creation of convincing fake videos that spread misinformation, impersonate individuals, or damage reputations."),
              const InformationWidget(
                  slimeImage: 'slime4',
                  information:
                      "Efforts are being made to detect and counter deepfakes, but the technology's rapid evolution highlights the need for ongoing vigilance and responsible use."),
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

class InformationWidget extends StatelessWidget {
  const InformationWidget(
      {super.key, required this.slimeImage, required this.information});

  final String slimeImage;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 156,
          height: 147,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/$slimeImage.png'),
                      fit: BoxFit.fitHeight),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage('assets/1.gif'), fit: BoxFit.cover),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Text(
            information,
            textAlign: TextAlign.center,
            style: bodyText12,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

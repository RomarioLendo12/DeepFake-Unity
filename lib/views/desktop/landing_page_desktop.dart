import 'package:deepfake/components/custom_button_widget.dart';
import 'package:deepfake/components/popup_menu_desktop.dart';
import 'package:deepfake/utility.dart';
import 'package:deepfake/views/information_page.dart';
import 'package:deepfake/views/desktop/information_page_desktop.dart';
import 'package:deepfake/views/desktop/our_team.dart';
import 'package:deepfake/views/desktop/upload_video_dekstop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPageDesktop extends StatelessWidget {
  const LandingPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 51),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(blurStyle: BlurStyle.normal, blurRadius: 2.0)
            ], color: Colors.white),
            child: Row(
              children: [
                const SizedBox(
                  width: 51,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const LandingPageDesktop(),
                        transition: Transition.fadeIn);
                  },
                  child: Image.asset(
                    "assets/df-2.png",
                    width: 265,
                  ),
                ),
                const SizedBox(
                  width: 75,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const LandingPageDesktop(),
                        transition: Transition.fadeIn);
                  },
                  child: Text(
                    "Home",
                    style: desktopH4.copyWith(color: brand600),
                  ),
                ),
                const SizedBox(width: 75),
                TextButton(
                  onPressed: () {
                    Get.to(() => const OurTeamDesktop(),
                        transition: Transition.fadeIn);
                  },
                  child: Text(
                    "Our Team",
                    style: desktopH4.copyWith(color: brand600),
                  ),
                ),
                const Spacer(),
                CustomButtonWidget(
                  buttonName: 'Log In',
                  width: 79,
                  height: 44,
                  callback: () {},
                ),
                const SizedBox(
                  width: 18,
                ),
                SizedBox(
                  width: 97,
                  height: 44,
                  child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: const BorderSide(color: brand600),
                      ),
                      child: Text(
                        'Register',
                        style: bodyText16.copyWith(
                            fontWeight: FontWeight.w600, color: brand600),
                      )),
                ),
                const SizedBox(
                  width: 121,
                )
              ],
            ),
          ), //navbar
          Container(
            //container2 untuk video section
            padding: EdgeInsets.only(left: 94, top: 254, bottom: 356),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(
                  height: 254,
                ),
                Row(children: [
                  Text('A Great Masterpiece \nComes Great Responsibility',
                      style: desktopH1.copyWith(
                          fontSize: 60,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ]),
                const SizedBox(
                  height: 81,
                ),
                Row(
                  children: [
                    OutlinedButton(
                        onPressed: () {
                           Get.to(() => const LearnMoreDesktop(),
                        transition: Transition.fadeIn);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 14, top: 3, bottom: 4, right: 12),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)),
                          child: Text(
                            'Learn More About DeepFake',
                            style: desktopH2.copyWith(color: Colors.white),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ), //video section
          const SizedBox(
            height: 96,
          ),
          Column(
            children: [
              Image.asset(
                "assets/exclamation.png",
                width: 34,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "About DeepFake",
                style: desktopH5.copyWith(fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 78,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 22, right: 11, bottom: 18, left: 11),
                decoration: BoxDecoration(
                    border: Border.all(color: neutral300),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/1 1.png",
                      width: 81,
                    ),
                    Text(
                      "Deepfakes can be used to create highly convincing fake\nvideos or audios of public figures.",
                      style:
                          desktopH5.copyWith(fontSize: 11, color: neutral500),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 33,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 28, right: 11, bottom: 23, left: 11),
                decoration: BoxDecoration(
                    border: Border.all(color: neutral300),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/2 1.png",
                      width: 81,
                    ),
                    Text(
                      "Deepfake technology poses a significant threat to personal\nprivacy.",
                      style:
                          desktopH5.copyWith(fontSize: 11, color: neutral500),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 33,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 40, right: 11, bottom: 23, left: 11),
                decoration: BoxDecoration(
                    border: Border.all(color: neutral300),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/3 2.png",
                      width: 81,
                    ),
                    Text(
                      "Actors, politicians, or any person can fall victim to deepfake\nmanipulation.",
                      style:
                          desktopH5.copyWith(fontSize: 11, color: neutral500),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 22, right: 11, bottom: 18, left: 11),
                decoration: BoxDecoration(
                    border: Border.all(color: neutral300),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/5 2.png",
                      width: 81,
                    ),
                    Text(
                      "The rise of deepfakes poses challenges for the legal system to\nestablish accountability and enforce laws against their misuse.",
                      style:
                          desktopH5.copyWith(fontSize: 11, color: neutral500),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 33,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 28, right: 11, bottom: 23, left: 11),
                decoration: BoxDecoration(
                    border: Border.all(color: neutral300),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/4 3.png",
                      width: 81,
                    ),
                    Text(
                      "Scammers may use deepfake technology to trick individuals.",
                      style:
                          desktopH5.copyWith(fontSize: 11, color: neutral500),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 52,
          ),
          Image.asset("assets/sbjs 1.png"),
          const SizedBox(
            height: 45,
          ),
          Center(
              child: CustomButtonWidget(
                  buttonName: "Create Video",
                  width: 205,
                  height: 71,
                  callback: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext ctx) {
                          return PopupMenuWidgetDesktop(contents: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/exclamation.png",
                                  width: 34,
                                ),
                               const  SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Warning",
                                  style: desktopH3.copyWith(color: neutral700),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            Text(
                              "This is a call to action for users and creators alike. As users, we\nmust exercise discernment, fact-check sources, and question the\n veracity of content before sharing. Responsible creators, on the\nother hand, must uphold ethical standards and refrain from using\n deepfakes for malicious purposes.",
                              textAlign: TextAlign.center,
                              style: desktopH5.copyWith(
                                  fontSize: 20, color: neutral500),
                            ),
                            const SizedBox(
                              height: 59,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButtonWidget(
                                    buttonName: "Agree",
                                    width: 83,
                                    height: 44,
                                    callback: () {
                                      Get.to(() => const DeepFakeProgress(),
                                          transition: Transition.fadeIn);
                                    }),
                                const SizedBox(
                                  width: 70,
                                ),
                                SizedBox(
                                  width: 101,
                                  height: 44,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          side:
                                              const BorderSide(color: rose600)),
                                      child: Text(
                                        "Disagree",
                                        style: desktopH5.copyWith(
                                            fontSize: 16, color: rose600),
                                      )),
                                )
                              ],
                            ),
                          ]);
                        });
                  })),
          const SizedBox(
            height: 130,
          ),
          Container(
            //footer
            color: Colors.black,
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 177,
              top: 29,
              bottom: 28,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/logo-2.png",
                  width: 87,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "DEEPFAKE\nUNSRAT IT COMMUNITY",
                  style: desktopH4.copyWith(color: Colors.white),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About DeepFake",
                      style:
                          desktopH5.copyWith(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "What behind the progress",
                      style: desktopH5.copyWith(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact us",
                      style:
                          desktopH5.copyWith(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Need anything? Get in touch and\nwe can help.",
                      style: desktopH5.copyWith(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/ig.png",
                          width: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "unity.unsrat",
                          style: desktopH5.copyWith(
                              fontSize: 12, color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/linkedin.png",
                          width: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "UNSRAT IT Community",
                          style: desktopH5.copyWith(
                              fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/facebook.png",
                          width: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Unsrat IT Community(Unity)",
                          style: desktopH5.copyWith(
                              fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ), //footer
        ],
      ),
    );
  }
}

class AboutDeepfakeWidgetDektop extends StatelessWidget {
  const AboutDeepfakeWidgetDektop(
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
      child: Row(
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

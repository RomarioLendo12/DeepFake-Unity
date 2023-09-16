import 'package:deepfake/components/custom_button_widget.dart';
import 'package:deepfake/utility.dart';
import 'package:deepfake/views/desktop/our_team.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'landing_page_desktop.dart';

class ResultPageDesktop extends StatelessWidget {
  const ResultPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
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
        const SizedBox(
          height: 36,
        ),
        Center(
          child: Text(
            "Result",
            style: desktopH1.copyWith(fontSize: 48, color: brand900),
          ),
        ),
        const SizedBox(
          height: 133,
        ),
        Center(
          child: Image.asset(
            "assets/ryan_result2.png",
            width: 775,
            height: 366,
          ),
        ),
        Center(
          child: Image.asset(
            "assets/ryan_result.png",
            width: 775,
            height: 358,
          ),
        ),
        const SizedBox(
          height: 55,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButtonWidget(
                  buttonName: "Download",
                  width: 198,
                  height: 67,
                  callback: () {}),
              const SizedBox(
                width: 60,
              ),
              SizedBox(
                width: 198,
                height: 67,
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      side: const BorderSide(color: brand600),
                    ),
                    child: Text(
                      'Regenerate',
                      style: bodyText16.copyWith(
                          fontWeight: FontWeight.w600, color: brand600),
                    )),
              ),
              const SizedBox(
                height: 201,
              ),
            ],
          ),
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
          ),
      ]),
    );
  }
}

import 'package:deepfake/utility.dart';
import 'package:deepfake/views/desktop/landing_page_desktop.dart';
import 'package:deepfake/views/desktop/our_team.dart';
import 'package:flutter/material.dart';
import 'package:deepfake/components/custom_button_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

class LearnMoreDesktop extends StatelessWidget {
  const LearnMoreDesktop({super.key});

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
          ),
          const SizedBox(
            height: 109,
          ),
          Center(
            child: Text(
              "What is DeepFake?",
              style: desktopH1.copyWith(color: brand900),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 35 , right: 347,),
              child:  Row(
              children: [
                Image.asset(
                  "assets/slime.png",
                  width: 323,
                ),
                const SizedBox(width: 53,),
                Text(
                  "Deepfake technology involves using advanced artificial intelligence,\nspecifically deep learning algorithms, to create\n highly realistic fake videos or images. It seamlessly swaps\n one person's face or voice onto another's, often with\n astonishing accuracy.",
                  style: desktopH5.copyWith(fontSize: 18), textAlign: TextAlign.center,
                ),
              ],
            ),
            ),
          ),
          const SizedBox(height: 24,),
           Center(
            child: Container(
              padding: const EdgeInsets.only(left: 344, right: 85),
              child:  Row(
              children: [
                Text(
                  "Deepfake technology involves using advanced artificial intelligence,\nspecifically deep learning algorithms, to create\n highly realistic fake videos or images. It seamlessly swaps\n one person's face or voice onto another's, often with\n astonishing accuracy.",
                  style: desktopH5.copyWith(fontSize: 18), textAlign: TextAlign.center,
                ),
                const SizedBox(width: 53,),
                Image.asset(
                  "assets/slime.png",
                  width: 323,
                ),
              ],
            ),
            ),
          ),
          const SizedBox(height: 24,),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 85 , right: 347,),
              child:  Row(
              children: [
                Image.asset(
                  "assets/slime.png",
                  width: 323,
                ),
                const SizedBox(width: 53,),
                Text(
                  "Deepfake technology involves using advanced artificial intelligence,\nspecifically deep learning algorithms, to create\n highly realistic fake videos or images. It seamlessly swaps\n one person's face or voice onto another's, often with\n astonishing accuracy.",
                  style: desktopH5.copyWith(fontSize: 18), textAlign: TextAlign.center,
                ),
              ],
            ),
            ),
          ),
          const SizedBox(height: 24,),
           Center(
            child: Container(
              padding: const EdgeInsets.only(left: 344, right: 85),
              child:  Row(
              children: [
                Text(
                  "Deepfake technology involves using advanced artificial intelligence,\nspecifically deep learning algorithms, to create\n highly realistic fake videos or images. It seamlessly swaps\n one person's face or voice onto another's, often with\n astonishing accuracy.",
                  style: desktopH5.copyWith(fontSize: 18), textAlign: TextAlign.center,
                ),
                const SizedBox(width: 53, ),
                Image.asset(
                  "assets/slime.png",
                  width: 323,
                ),
              ],
            ),
            ),
          ),
          const SizedBox(height: 87,),
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
        ], //children listview
      ),
    );
  }
}

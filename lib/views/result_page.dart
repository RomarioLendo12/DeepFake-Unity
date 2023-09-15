import 'package:deepfake/components/custom_button_widget.dart';
import 'package:deepfake/utility.dart';
import 'package:deepfake/views/our_team.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'landing_page_desktop.dart';

class ResultPageDesktop extends StatelessWidget {
  const ResultPageDesktop({super.key});

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
        ]
    ),
    );
  }
}
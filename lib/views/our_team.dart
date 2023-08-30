import 'package:deepfake/components/custom_button_widget.dart';
import 'package:deepfake/components/profile_team.dart';
import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';

class OurTeamDesktop extends StatelessWidget {
  const OurTeamDesktop({super.key});

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
              Image.asset(
                "assets/df-2.png",
                width: 265,
              ),
              const SizedBox(
                width: 75,
              ),
              Text(
                "Home",
                style: desktopH4.copyWith(color: brand600),
              ),
              const SizedBox(width: 75),
              Text(
                "Our Team",
                style: desktopH4.copyWith(color: brand600),
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
          height: 92,
        ),
        Center(
          child: Image.asset(
            "assets/logo-2.png",
            width: 158,
          ),
        ),
        const SizedBox(
          height: 73,
        ),
        Center(
          child: Text(
            "UNITY DeepFake Development Team",
            style: desktopH3.copyWith(color: brand900),
          ),
        ),
        const SizedBox(
          height: 73,
        ),
        Row(
          children: [
            //bikin class untuk tiap profile details
            ProfileTeam(
              image: "assets/xave-tes.png",
              title: "Xaverius Senduk",
              description: "Senior Development Lead ",
              imageWidth: 164,
            )
          ],
        )
      ]),
    );
  }
}

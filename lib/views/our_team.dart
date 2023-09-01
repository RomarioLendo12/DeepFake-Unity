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
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileTeam(
              image: "xave-tes.png",
              title: "Fransiscus Xaverius Senduk",
              description: "Senior Development Lead ",
              imageWidth: 164,
            ),
            SizedBox(
              width: 43,
            ),
            ProfileTeam(
              image: "febrian-team.png",
              title: "Xaverius Senduk",
              description: "Senior Development Lead ",
              imageWidth: 164,
            ),
          ],
        ),
        const SizedBox(
          height: 92,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileTeam(
              image: "romario-team.png",
              title: "Romario Lendo",
              description: "Flutter Developer",
              imageWidth: 164,
            ),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "gabriel_team.png",
                title: "Gabriel F. Z. Sadu",
                description: "Backend Web Developer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "kanaya_team.png",
                title: "Kanaya Tumbel",
                description: "Senior Data Scientist",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "revo_team.png",
                title: "Revo F. R. Ombeng",
                description: "Senior Data Scientist",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "angel_team.png",
                title: "Angelina Chandra",
                description: "Cloud Engineer",
                imageWidth: 164),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileTeam(
                image: "jova_team.png",
                title: "Jovanka D. Ruindungan",
                description: "Backend Web Developer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "frandi_team.png",
                title: "Frandika Andika",
                description: "Cloud Engineer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "ridho_team.png",
                title: "Ridho Aditya",
                description: "Machine Learning Engineer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "triadi_team.png",
                title: "Ahmad Triadi Julianto M",
                description: "UI Designer & Frontend Developer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "ayang_team.png",
                title: "Regina George",
                description: "Machine Learning Engineer",
                imageWidth: 164),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
      ]),
    );
  }
}

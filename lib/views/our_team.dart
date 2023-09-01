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
              title: "Febrian G. Lalamentik",
              description: "Development Lead ",
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileTeam(
                image: "gal_team.png",
                title: "Galnoel Rindengan",
                description: "Machine Learning Engineer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "deo_team.png",
                title: "Deo Lolowang",
                description: "Machine Learning Engineer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "satria_team.png",
                title: "Satria Maharido Amu",
                description: "Machine Learning Engineer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "luke_team.png",
                title: "Luke Mawuntu",
                description: "Machine Learning Engineer",
                imageWidth: 164),
            SizedBox(
              width: 53,
            ),
            ProfileTeam(
                image: "mentari_team.png",
                title: "Mentari Estefin",
                description: "Senior Developer",
                imageWidth: 164),
          ],
        ),
        const SizedBox(
          height: 171,
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

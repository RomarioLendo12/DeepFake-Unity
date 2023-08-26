import 'package:deepfake/components/custom_button_widget.dart';
import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';

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
          const Spacer(),
          Container(
            //container2 untuk video section
            width: double.infinity,
            height: 200,
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
                    Text(
                      'Learn More About DeepFake',
                      style: desktopH2.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 83,
          ),
          Container(
            //container3 untuk about widget
            alignment: Alignment.center,
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const AboutDeepfakeWidgetDektop(
                              image: "1 1.png",
                              description:
                                  " Deepfakes can be used to create highly convincing fake videos or audios of public figures.",
                              imageWidth: 81),
                        ],
                      ),
                    ],
                  )
                ]),
          ),
          const SizedBox(
            height: 52,
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "sbjs 1.png",
                  width: 1119,
                ),
                const SizedBox(height: 45),
                CustomButtonWidget(
                    buttonName: "Create Video",
                    width: 149,
                    height: 22,
                    callback: () {})
              ],
            ),
          ),
          SizedBox(height: 130,),
          Container(
          )
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

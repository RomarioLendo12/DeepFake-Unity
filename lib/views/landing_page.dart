import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';

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
            Icon(
              Icons.menu,
              color: brand800,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 38,
                ),
                Image.asset(
                  'assets/logo-2.png',
                  width: 108,
                ),
                const SizedBox(
                  height: 34,
                ),
                Text(
                  'unity deepfake',
                  textAlign: TextAlign.center,
                  style: mobileH1.copyWith(color: brand900),
                ),
                const SizedBox(
                  height: 34,
                ),
                Container(
                  width: double.infinity,
                  height: 343,
                  color: brand900,
                ),
                const SizedBox(
                  height: 43,
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
              ],
            ),
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
      margin: const EdgeInsets.only(top: 25),
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

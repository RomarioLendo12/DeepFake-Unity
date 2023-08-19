import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 84,
        elevation: 7,
        title: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 8),
              Image.asset(
                'assets/df-2.png',
                width: 265,
              ),
              const SizedBox(
                width: 75,
              ),
              Text(
                'Home',
                style: desktopH4.copyWith(color: brand600),
              ),
              SizedBox(
                width: 498,
              ),
              Icon(
                Icons.menu,
                color: brand800,
              ),
            ],
          ),
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
                  'UNITY DEEPFAKE',
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

                ///himbauan
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

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        alignment: Alignment.center,
        width: 1512,
        height: 84,
      ),
    );
  }

  @override
  Size get preferredSize => Size(1512, 84);
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
      padding: const EdgeInsets.symmetric(horizontal: 10),
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

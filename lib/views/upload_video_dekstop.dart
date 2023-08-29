import 'package:deepfake/components/custom_button_widget.dart';
import 'package:deepfake/utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeepFakeProgress extends StatelessWidget {
  const DeepFakeProgress({super.key});

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
          const SizedBox(
            height: 85,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Choose your avatar",
                style: desktopH1.copyWith(color: brand900),
              )
            ],
          ),
          const SizedBox(
            height: 118,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 227),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 265,
                      width: 166,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/ryan_avatar2.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 54,
                    ),
                    Text(
                      'Ryan Reynolds',
                      style: desktopH4,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 265,
                      width: 166,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/dekan_avatar.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 54,
                    ),
                    Text(
                      'Prof Dr Ir Fabian J Manoppo MAgr',
                      style: desktopH4,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 265,
                      width: 166,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/aldi_avatar.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 54,
                    ),
                    Text(
                      'Aldy Taher',
                      style: desktopH4,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 162,
          ),
          Center(
            child: Text(
              "Upload Your Video",
              style: desktopH1.copyWith(color: brand900),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Center(
              child: Text(
            'Single face only, maximum video size of 50MB,\n maximum duration of 5 minutes, and acceptable\nformats include MP4, AVI, MOV, and MKV.',
            style: desktopH4.copyWith(color: neutral500),
            textAlign: TextAlign.center,
          )),
          const SizedBox(
            height: 48,
          ),
          Center(
            child: CustomButtonWidget(
              buttonName: "Upload Video",
              width: 167,
              height: 64,
              callback: () {},
              buttonColor: neutral400,
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Center(
            child: Text(
              "Some Result From UNITY DeepFake",
              style: desktopH2.copyWith(color: brand400),
            ),
          ),
          const SizedBox(
            height: 118,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Image.asset("")],
          ),
          const SizedBox(
            height: 67,
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
          ) //footer
        ],
      ),
    );
  }
}

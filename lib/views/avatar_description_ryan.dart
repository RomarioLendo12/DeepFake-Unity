import 'package:deepfake/components/custom_button_widget.dart';
import 'package:deepfake/components/popup_menu_widget.dart';
import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';

class AvatarDescription extends StatelessWidget {
  const AvatarDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff4f46e5),
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
            height: 76,
          ),
          Container(
            color: Color(0xff4f46e5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ryan Reynolds",
                  style: desktopH2.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 21,
                ),
                Image.asset(
                  "assets/ryan_desc2.png",
                  width: 257,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 29.5, horizontal: 69),
                  decoration: BoxDecoration(
                    color: Color(0xFF312E81),
                    border: Border.all(
                        color: Color(0xFF312E81), style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text("Canadian-American Actor",
                      style: desktopH3.copyWith(color: Colors.white)),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Ryan Rodney Reynolds is a Canadian-born American actor, film producer,\nand businessman. He began his career starring in the Canadian teen\nsoap opera Hillside, and had minor roles before landing the lead role on\nthe sitcom Two Guys and a Girl between 1998 and 2001.",
                  textAlign: TextAlign.center,
                  style: desktopH4.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonWidgetWhite(
                    buttonName: "Upload Video",
                    width: 200,
                    height: 62,
                    callback: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 76,
          ),
          Container(
            //footer
            color: Colors.black,
            width: double.infinity,
            padding:
                EdgeInsets.only(left: 177, top: 29, bottom: 28, right: 108),
            child: Row(
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
                const SizedBox(
                  width: 94,
                ),
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
                          style: desktopH5.copyWith(fontSize: 12),
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
                          style: desktopH5.copyWith(fontSize: 12),
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

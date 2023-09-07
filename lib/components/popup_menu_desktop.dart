import 'package:flutter/material.dart';
import 'package:deepfake/utility.dart';

class AlertDesktop extends StatelessWidget {
  const AlertDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 200, top: 134, right: 200),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/exclamation.png",
                    width: 34,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Warning",
                    style: desktopH3.copyWith(color: neutral700),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Text(
                      "This is a call to action for users and creators alike. As users, we\nmust exercise discernment, fact-check sources, and question the\n veracity of content before sharing. Responsible creators, on the\nother hand, must uphold ethical standards and refrain from using\n deepfakes for malicious purposes.")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

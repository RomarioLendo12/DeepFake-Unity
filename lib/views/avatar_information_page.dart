import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AvatarInformationPage extends StatelessWidget {
  const AvatarInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brand600,
      appBar: AppBar(
        backgroundColor: brand600,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Avatar Information',
          style: bodyText14.copyWith(
              fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        children: [
          Text(
            Get.arguments[0],
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Get.arguments[0].length > 13
                ? bodyText18.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white)
                : mobileH3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          Image.asset(
            'assets/${Get.arguments[3]}_info.png',
            height: 306,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 35),
            padding: const EdgeInsets.symmetric(vertical: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: brand900,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              Get.arguments[1],
              textAlign: TextAlign.center,
              style: bodyText18.copyWith(
                  fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 25),
            child: Text(
              Get.arguments[2],
              textAlign: TextAlign.center,
              style: bodyText12.copyWith(color: Colors.white),
            ),
          ),
          Center(
            child: Container(
              width: 164,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upload Video',
                    style: bodyText16.copyWith(
                        color: brand900, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: brand900,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

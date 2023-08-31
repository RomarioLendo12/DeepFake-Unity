import 'package:deepfake/utility.dart';
import 'package:flutter/material.dart';

class ProfileTeam extends StatelessWidget {
  const ProfileTeam(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.imageWidth});

  final String image;
  final String description;
  final double imageWidth;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80.0,
            backgroundColor: Colors.white,
            child: Image.asset(
              "assets/$image",
              width: imageWidth,
            ),
          ),
          const SizedBox(height: 10,),
          Text(title, style: desktopH5.copyWith(fontSize: 11)),
          const SizedBox(height: 3,),
          Text(
            description,
            style: desktopH5.copyWith(fontSize: 8),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Image.asset(
                "assets/linkedin-team.png",
                width: 15,
              ),
              const SizedBox(
                width: 4,
              ),
              Image.asset(
                "assets/ig-team.png",
                width: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}

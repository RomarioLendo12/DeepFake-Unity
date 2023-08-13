import 'package:flutter/material.dart';

import '../utility.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.buttonName,
      required this.width,
      required this.height,
      required this.callback});

  final String buttonName;
  final double width;
  final double height;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: brand600),
        child: Center(
          child: Text(
            buttonName,
            style: bodyText16.copyWith(
                fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

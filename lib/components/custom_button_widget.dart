import 'package:flutter/material.dart';

import '../utility.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      
      {super.key,
      required this.buttonName,
      required this.width,
      required this.height,
      required this.callback,
      this.buttonColor = brand600,

      this.textColor = Colors.white});

  final String buttonName;
  final double width;
  final double height;
  final VoidCallback callback;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: buttonColor),
        child: Center(
          child: Text(
            buttonName,
            style: bodyText16.copyWith(
                fontWeight: FontWeight.w600, color: textColor),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWidgetWhite extends StatelessWidget {
  const CustomButtonWidgetWhite(
      
      {super.key,
      required this.buttonName,
      required this.width,
      required this.height,
      required this.callback,
      this.buttonColor2 = Colors.white,
      this.textColor2 = brand900});

  final String buttonName;
  final double width;
  final double height;
  final VoidCallback callback;
  final Color textColor2;
  final Color buttonColor2;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: buttonColor2),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonName,
                style: bodyText16.copyWith(
                    fontWeight: FontWeight.w600, color: textColor2),
              ),
              const SizedBox(width: 8,),
              const Icon(Icons.arrow_back_ios, size: 20,)
            ],
          ),
        ),
      ),
    );
  }
}


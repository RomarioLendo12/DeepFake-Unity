import 'package:deepfake/components/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:deepfake/utility.dart';

class PopupMenuWidgetDesktop extends StatelessWidget {
  const PopupMenuWidgetDesktop({super.key, required this.contents});

  final List<Widget> contents;

  @override
  Widget build(BuildContext context) {
     return AlertDialog(
      content: Container(
         width: 1048,
          height: 533,
        child: Padding(
          padding: const EdgeInsets.only(left: 200, top: 134, right: 200),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: contents,
          ),
        ),
      ),
    );
  }
}

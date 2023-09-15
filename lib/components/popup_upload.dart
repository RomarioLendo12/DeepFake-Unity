import 'package:deepfake/components/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:deepfake/utility.dart';

class UploadPopUp extends StatelessWidget {
  const UploadPopUp({super.key, required this.contents});

  final List<Widget> contents;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: contents,
      )
    );
  }
}
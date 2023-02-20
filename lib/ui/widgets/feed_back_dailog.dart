import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structureproject/api/api_extension.dart';
import 'package:structureproject/constant/app_colors.dart';

class FeedBackDailog extends StatelessWidget {
  const FeedBackDailog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: "Feedback".textStyle(
          color: AppColors.appBarColor, size: 22, weight: FontWeight.w700),
      content: SizedBox(
        height: 450,
        child: Column(
          children: [
            "Name".textStyle(),
          ],
        ).paddingSymmetric(horizontal: 20, vertical: 25),
      ),
    );
  }
}

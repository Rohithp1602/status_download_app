import 'package:flutter/material.dart';
import 'package:structureproject/api/api_extension.dart';
import 'package:structureproject/constant/app_colors.dart';

class InstaStatusSaverScreen extends StatelessWidget {
  const InstaStatusSaverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: "Instagram Status"
            .textStyle(size: 18, weight: FontWeight.bold, color: Colors.white),
        backgroundColor: AppColors.appBarColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

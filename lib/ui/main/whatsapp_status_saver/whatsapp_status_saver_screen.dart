import 'package:flutter/material.dart';
import 'package:structureproject/api/api_extension.dart';
import 'package:structureproject/constant/app_colors.dart';
import 'package:structureproject/ui/main/whatsapp_status_saver/imageScreen.dart';
import 'package:structureproject/ui/main/whatsapp_status_saver/videoScreen.dart';

class WhatsappStatusSaverScreen extends StatelessWidget {
  const WhatsappStatusSaverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: "Whatsapp Status".textStyle(
              size: 18, weight: FontWeight.bold, color: Colors.white),
          backgroundColor: AppColors.appBarColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          bottom: TabBar(indicatorColor: Colors.white,tabs: [
            Container(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                'IMAGES',
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                'VIDEOS',
              ),
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            ImageScreen(),
            VideoScreen(),
          ],
        ),
      ),
    );
  }
}

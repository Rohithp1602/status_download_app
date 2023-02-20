import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structureproject/api/api_extension.dart';
import 'package:structureproject/ui/widgets/feed_back_dailog.dart';

import '../../constant/assets.dart';
import '../../constant/routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.size.height * 0.17,
              width: Get.size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xff524E95),
                    Color(0xffBC1B5B),
                    Color(0xffBC1B5B),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    AppIcons.icHome,
                    height: 30,
                    width: 30,
                  ),
                  (10.0).spaceW(),
                  "Home".textStyle(
                      size: 15, weight: FontWeight.w400, color: Colors.black),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.whatsappStatusScreen);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icWhatsapp,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "Whatsapp Status Saver".textStyle(
                        size: 15, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.instaStatusScreen);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icInstagram,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "Instagram video Saver".textStyle(
                        size: 14, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.downloadScreen);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icDownload,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "Your Downloads".textStyle(
                        size: 14, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.likedScreen);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icLiked,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "Liked".textStyle(
                        size: 14, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icRate,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "Rate us".textStyle(
                        size: 14, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icShare,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "Share App".textStyle(
                        size: 14, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.back();
                showDialog(
                  context: context,
                  builder: (context) {
                    return FeedBackDailog();
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icFeedback,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "Feedback".textStyle(
                        size: 14, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icPolicy,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "Privacy Policy".textStyle(
                        size: 14, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      AppIcons.icInfo,
                      height: 30,
                      width: 30,
                    ),
                    (10.0).spaceW(),
                    "About App".textStyle(
                        size: 14, weight: FontWeight.w400, color: Colors.black),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

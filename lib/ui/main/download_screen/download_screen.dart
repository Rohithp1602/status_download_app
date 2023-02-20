import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structureproject/api/api_extension.dart';
import 'package:structureproject/constant/app_colors.dart';
import 'package:structureproject/models/home_screen_status_model.dart';
import 'package:structureproject/ui/widgets/common/video_list_card.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: "Your Download"
            .textStyle(size: 18, weight: FontWeight.bold, color: Colors.white),
        backgroundColor: AppColors.appBarColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
      body: SizedBox(
        height: Get.size.height,
        child: GridView.builder(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          itemCount: tempList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: Get.size.width / (Get.size.height / 1.6)),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: VideoListCard(
                imgUrl: tempList[index].imgUrl,
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structureproject/api/api_extension.dart';
import 'package:structureproject/constant/app_colors.dart';

class FeedBackDailog extends StatelessWidget {
  const FeedBackDailog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: "Feedback".textStyle(
          color: AppColors.appBarColor, size: 22, weight: FontWeight.w700),
      content: Container(
        height: 450,
        width: Get.size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Name".textStyle(size: 14, weight: FontWeight.w400),
              (5.0).spaceH(),
              SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: Colors.black,
                  cursorHeight: 20,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              (15.0).spaceH(),
              "Email".textStyle(size: 14, weight: FontWeight.w400),
              (5.0).spaceH(),
              SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: Colors.black,
                  cursorHeight: 20,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              (15.0).spaceH(),
              "Message".textStyle(size: 14, weight: FontWeight.w400),
              (5.0).spaceH(),
              SizedBox(
                child: TextField(
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                  cursorColor: Colors.black,
                  cursorHeight: 20,
                  maxLines: 4,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.24)),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              (25.0).spaceH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 45,
                      width: 115,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0XFF424242),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Cancle',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 45,
                      width: 115,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.appBarColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  )
                ],
              )
            ],
          ).paddingSymmetric(horizontal: 20, vertical: 25),
        ),
      ),
    );
  }
}

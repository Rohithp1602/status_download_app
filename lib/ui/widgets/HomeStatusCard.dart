import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structureproject/api/api_extension.dart';

class HomeStatusCard extends StatelessWidget {
  String text;
  String imgUrl;
  void Function()? onTap;

  HomeStatusCard({Key? key, required this.text, required this.imgUrl,this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Container(
        height: 100,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.6,
          )
        ]),
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: Get.size.width,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset(
                    imgUrl,
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
                child: Container(
                    alignment: Alignment.center,
                    width: Get.size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: text.textStyle(weight: FontWeight.w400, size: 14)))
          ],
        ),
      ),
    );
  }
}

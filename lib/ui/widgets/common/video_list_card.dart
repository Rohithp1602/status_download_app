import 'package:flutter/material.dart';

class VideoListCard extends StatelessWidget {
  String imgUrl;
  void Function()? onTap;

  VideoListCard({Key? key, required this.imgUrl, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 0.5,
        )
      ]),
      child: InkWell(
        onTap: () {
          onTap!.call();
        },
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}

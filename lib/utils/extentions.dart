import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

showAppSnackBar(String tittle) {
  return Get.showSnackbar(GetSnackBar(
    // message: tittle,
    messageText: tittle.darkText(
        color: Colors.black,
        size: 16,
        weight: FontWeight.w500,
        align: TextAlign.start),
    borderRadius: 15,

    snackPosition: SnackPosition.BOTTOM,
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    shouldIconPulse: false,
    icon: Icon(
      Icons.error_outline,
      color: Colors.black,
    ),
    backgroundColor: Colors.black,
    duration: const Duration(seconds: 3),
  ));
}

extension AddText on String {
  Widget darkText(
      {Color color = Colors.black,
      num size = 14,
      TextAlign align = TextAlign.center,
      FontWeight weight = FontWeight.normal,
      TextDecoration? decoration}) {
    return Text(
      this,
      style: defaultTextStyle(
          size: size,
          color: Colors.white,
          weight: weight,
          decoration: decoration),
      textAlign: align,
    );
  }

  isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}

TextStyle defaultTextStyle(
    {Color color = const Color(0XFF9A9A9A),
    num size = 14,
    FontWeight weight = FontWeight.normal,
    TextDecoration? decoration}) {
  return GoogleFonts.poppins(
      color: color,
      fontSize: size.toDouble(),
      fontWeight: weight,
      decoration: decoration);
}

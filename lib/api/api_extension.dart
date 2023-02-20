import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

extension AddSpace on num {
  Widget spaceH() {
    return SizedBox(height: toDouble());
  }

  Widget spaceW() {
    return SizedBox(width: toDouble());
  }
}

showAppSnackBar(String tittle) {
  return Get.showSnackbar(GetSnackBar(
    // message: tittle,
    messageText: tittle.textStyle(
        color: Colors.red,
        size: 16,
        weight: FontWeight.w500,
        align: TextAlign.start),
    borderRadius: 15,

    snackPosition: SnackPosition.BOTTOM,
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    shouldIconPulse: false,
    icon: const Icon(
      Icons.error_outline,
      color: Colors.white,
    ),
    backgroundColor: Colors.black,
    duration: const Duration(seconds: 3),
  ));
}

extension AddText on String {
  Widget textStyle(
      {Color color = Colors.black,
      double size = 14,
      TextAlign align = TextAlign.center,
      FontWeight weight = FontWeight.normal,
      TextDecoration? decoration}) {
    return Text(
      this,
      style: GoogleFonts.inter(
          fontSize: size,
          color: color,
          fontWeight: weight,
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class UITextStyle {
  static TextStyle h2 = GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 38.4 / 24,
    ),
  );

  static TextStyle h3 = GoogleFonts.workSans(
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 26 / 20,
    ),
  );

  static TextStyle title1 = GoogleFonts.workSans(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      height: 25.6 / 16,
    ),
  );

  static TextStyle body1 = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 25.6 / 16,
    ),
  );

  static TextStyle caption = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 19.2 / 12,
    ),
  );
}

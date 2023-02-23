import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeContainer extends StatelessWidget {
  final double? width;
  final Color? containerColor, sizeTextColor;
  final String sizeText;
  const SizeContainer({
    Key? key,
    this.width,
    required this.sizeText,
    required this.containerColor,
    this.sizeTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 32,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
            sizeText,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.roboto().fontFamily,
                color: sizeTextColor),
          )),
    );
  }
}

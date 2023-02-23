import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryContainer extends StatelessWidget {
  final Color containerColor, textColor;
  final String category;
  final double width;
  const CategoryContainer({
    Key? key,
    required this.category,
    required this.containerColor,
    required this.textColor,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        category,
        style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            color: textColor),
      )),
    );
  }
}

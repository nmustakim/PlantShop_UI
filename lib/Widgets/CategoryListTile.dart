import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryListTile extends StatelessWidget {
  final String plantImage, plantName, rating, size, price;
  final Color plantBackgroundColor;
  const CategoryListTile({
    Key? key,
    required this.plantImage,
    required this.plantName,
    required this.rating,
    required this.size,
    required this.price,
    required this.plantBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16),
              width: 113,
              height: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: plantBackgroundColor),
            ),
            Container(
                margin: const EdgeInsets.only(left: 10, right: 6),
                width: 97,
                height: 88,
                child: Image.asset(plantImage)),
            Container(
              margin: const EdgeInsets.fromLTRB(81, 56, 8, 0),
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color((0XFFFFFFFF)),
              ),
              child: Image.asset(
                'assets/images/favourite.png',
                height: 11,
                width: 12,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 26,
        ),
        Column(
          children: [
            Row(children: [
              Text(plantName,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: const Color(0XFF000000))),
              const SizedBox(
                width: 12,
              ),
              Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.5),
                  ),
                  child: Image.asset('assets/images/star.png')),
              const SizedBox(
                width: 4,
              ),
              Text(rating)
            ]),
            const SizedBox(
              height: 4,
            ),
            Text(
              size,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                  color: const Color(0XFF000000)),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(price,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    color: const Color(0XFF000000))),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/SizeContainer.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 44),child: AppBar(backgroundColor: const Color(0XFFFAFAFA),elevation: 0,)),
      body: SingleChildScrollView(
        child: Column(
          children: [
       Stack(children: [
         Image.asset(
           'assets/images/prickly.png',
           height: 361,
           width: 375,
         ),
         IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.navigate_before))
       ],),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Prickly Pear',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: const Color(0XFF000000),
                            fontFamily: GoogleFonts.roboto().fontFamily),
                      ),
                      Text(
                        '20 \$',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            color: const Color(0XFF000000)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/star.png',
                        height: 13,
                        width: 13,
                      ),
                      const SizedBox(width: 4),
                      Text('4,8',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.montserrat().fontFamily,
                              color: const Color(
                                0XFFFFBB56,
                              )))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Select size',
                      style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 13,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: const [
                      SizeContainer(
                        width: 60,
                        containerColor: Color(
                          0XFFF4F4F4,
                        ),
                        sizeText: '5 Inch',
                        sizeTextColor: Color(0XFF505050),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SizeContainer(
                          width: 67,
                          containerColor: Color(0XFFD3B398),
                          sizeText: '10 Inch',
                          sizeTextColor: Color(0XFFFFFFFF)),
                      SizedBox(
                        width: 12,
                      ),
                      SizeContainer(
                          width: 67,
                          containerColor: Color(0XFFF4F4F4),
                          sizeText: '25 Inch',
                          sizeTextColor: Color(0XFF505050)),
                      SizedBox(
                        width: 12,
                      ),
                      SizeContainer(
                          width: 67,
                          containerColor: Color(0XFFF4F4F4),
                          sizeText: '50 Inch',
                          sizeTextColor: Color(0XFF505050)),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Prickly pear is a drought-resistant and hardy cactus that blooms with yellow-golden flowers in summer.',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w500,
                        color: const Color(0X00000000).withOpacity(0.5)),
                  ),
                  const SizedBox(
                    height: 47,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 52,
                        width: 52,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(
                          'assets/images/heart.png',
                          width: 23.47,
                          height: 21.33,
                        ),
                      ),
                      const SizedBox(
                        width: 46,
                      ),
                      Container(
                        width: 229,
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0XFFD3B398)),
                        child: Center(
                          child: Text('Add to cart',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  color: const Color(
                                    0XFFFFFFFF,
                                  ))),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Center(
                    child: Container(
                      width: 134,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0XFF000000)),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_ui/Screens/plants_list.dart';
import '../custom_clipper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
           Column(children: [
             Container(
               height: 87,
               color: const Color(0XFFD3B398),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     height: 4,
                     width: 56,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: const Color(0XFFFFFFFF),
                     ),
                   ),
                   Container(
                     height: 4,
                     width: 21,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: const Color(0XFFFFFFFF).withOpacity(0.6),
                     ),
                   ),
                   const SizedBox(
                     width: 8,
                   ),
                   Container(
                     height: 4,
                     width: 75,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: const Color(0XFFFFFFFF),
                     ),
                   ),
                   const SizedBox(
                     width: 8,
                   ),
                   Container(
                     height: 4,
                     width: 74,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: const Color(0XFFFFFFFF),
                     ),
                   ),
                   const SizedBox(
                     width: 8,
                   ),
                   Container(
                     height: 4,
                     width: 77,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: const Color(0XFFFFFFFF),
                     ),
                   ),
                 ],
               ),
             ),
             ClipPath(
                 clipper: MyCustomClipper(),
                 child: Container(
                   color: const Color(0XFFD3B398),
                   child: Center(
                       child: Image.asset(
                         'assets/images/img.png',
                         height: 463,
                         width: 375,
                       )),
                 )),



           ],),
            Container(margin:const EdgeInsets.only(top: 72,left: 327),height:24,width:24,decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.elliptical(24, 24),),color: const Color(0XFFFFFFFF).withOpacity(0.6)),child: InkWell(  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlantsList()));},child: const Icon(Icons.close_rounded,size: 15,color: Color(0XFFD3B398),)),),
            Padding(
              padding: const EdgeInsets.only(top: 472),
              child: Column(
                children: [
                  Container(
                    height: 83,
                    width: 83,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0XFFFFFFFF)),
                    child: Center(
                        child: Image.asset(
                          'assets/images/heart_.png',
                          width: 36,
                          height: 32,
                        )),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Center(
                      child: Text(
                        'Add a flower\nTo favourites',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            color: const Color(0XFF000000),
                            fontFamily: GoogleFonts.montserrat().fontFamily),
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                      child: Text(
                        'So that you do not loose\na new friend for home',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color(0XFF000000).withOpacity(0.5),
                            fontFamily: GoogleFonts.montserrat().fontFamily),
                      )),
                  const SizedBox(
                    height: 65,
                  ),
                    
               Container(
                      height: 5,
                      width: 134,
                      decoration: BoxDecoration(
                          color: const Color(0XFF000000),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

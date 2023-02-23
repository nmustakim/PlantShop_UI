import 'dart:core';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_ui/Screens/plant_details.dart';
import '../Widgets/CategoryContainer.dart';
import '../Widgets/CategoryListTile.dart';

class PlantsList extends StatelessWidget {
  const PlantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 64, 24, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.keyboard_backspace_sharp,
                        size: 25,
                      )),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'All plants',
                    style: TextStyle(
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF000000)),
                  ),
                  const SizedBox(
                    width: 198,
                  ),
                  Image.asset('assets/images/icon_.png'),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Plant is for room',
                style: TextStyle(
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 62,
              ),
              SizedBox(
                height: 33,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryContainer(
                      category: 'All',
                      containerColor: Color(0XFFF4F4F4),
                      textColor: Color(0XFF505050),
                      width: 41,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryContainer(
                      category: 'Cacti',
                      containerColor: Color(0XFFD3B398),
                      textColor: Color(0XFFFFFFFF),
                      width: 58,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryContainer(
                      category: 'In pots',
                      containerColor: Color(0XFFF4F4F4),
                      textColor: Color(0XFF505050),
                      width: 70,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryContainer(
                      category: 'Dried flowers',
                      containerColor: Color(0XFFF4F4F4),
                      textColor: Color(0XFF505050),
                      width: 112,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryContainer(
                      category: 'In pots',
                      containerColor: Color(0XFFF4F4F4),
                      textColor: Color(0XFF505050),
                      width: 70,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text('Popularity',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          color: const Color(0XFF000000))),
                  const SizedBox(
                    width: 6.61,
                  ),
                  Image.asset('assets/images/vector__.png')
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const CategoryListTile(
                plantImage: 'assets/images/ech.png',
                plantName: 'Echeveria',
                rating: '5,0',
                size: 'From 3 Inch',
                price: '25\$',
                plantBackgroundColor: Color(0XFFF2F7FF),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlantDetails())),
                child: const CategoryListTile(
                  plantImage: 'assets/images/prickly_pear.png',
                  plantName: 'Prickly Pear',
                  rating: '4,8',
                  size: 'From 5 Inch',
                  price: '20\$',
                  plantBackgroundColor: Color(0XFFFCF0F0),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    height: 92,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0XFFE2E9FF), Color(0XFFFFEAEA)]),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 48, 24, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Free shipping',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                color: const Color(0XFF000000))),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text('When ordering',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily:
                                        GoogleFonts.montserrat().fontFamily,
                                    color: const Color(0XFF000000))),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: const Color(0XFFFFBB56)),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                child: Text('From 40\$',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily:
                                            GoogleFonts.montserrat().fontFamily,
                                        color: const Color(0XFF000000))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 199, right: 8),
                    child: Image.asset(
                      'assets/images/slay.png',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const CategoryListTile(
                plantImage: 'assets/images/sans.png',
                plantName: 'Sansivieria',
                rating: '4,5',
                size: 'From 8 Inch',
                price: '20 \$',
                plantBackgroundColor: Color(0XFFEBF4EE),
              ),
              const SizedBox(
                height: 42,
              ),
              Center(
                  child: Container(
                height: 5,
                width: 134,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0XFF000000)),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

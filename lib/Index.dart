import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _currentSlideIndex = 0;

  /*final List<String> _imagesList = [
    'assets/images/voiture_suv_elipse.png',
    'assets/images/voiture_suv_elipse.png',
    'assets/images/voiture_suv_elipse.png',
    'assets/images/voiture_suv_elipse.png',
    'assets/images/voiture_suv_elipse.png',
  ];*/

  final List<Map<String, dynamic>> _imagesList = [
    {
      'image': 'assets/images/services/Courses.png',
      'title': 'Courses',
      'description': 'Déplacez vous en toute sécurité',
    },
    {
      'image': 'assets/images/services/Livraison.png',
      'title': 'Livraisons',
      'description': 'Faites vous livrer où que vous soyez',
    },
    {
      'image': 'assets/images/services/Pronto school.png',
      'title': 'Pronto School',
      'description': 'Abonnez vous pour le déplacement scolaire de vos enfants',
    },
    {
      'image': 'assets/images/services/Déménagement.png',
      'title': 'Pronto Déménagement',
      'description': 'Déménagez en toute sécurité ',
    },
    {
      'image': 'assets/images/services/Réservation.png',
      'title': 'Pronto Réservation',
      'description': 'Réservez le véhicule de votre choix à l’avance',
    },

    ///\n Parce-que nos enfants méritent ce qu\'ils y a de mieux
  ];

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: CarouselSlider(
                items: _imagesList.map((imageUrl) {
                  return Column(
                    children: [
                      SizedBox(height: 80,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 1.0),
                          child: Image.asset(
                            imageUrl['image'],
                            fit: BoxFit.cover,
                          ),

                        ),
                      ),
                      /*Padding(
                        padding: const EdgeInsets.only(top: 28.0,bottom: 29),
                        child: Text(
                          imageUrl['title'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),

                      ),
                      Center(
                        child: Text(
                          imageUrl['description'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),*/

                      Expanded(
                        child: Container(
                          //width: 273,
                          //height: 300,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  imageUrl['title'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    //height: 0,
                                  ),
                                ),
                                SizedBox(
                                  //width: 273,
                                  child: Text(
                                    imageUrl['description'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF2F2F2F),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      //height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 0.8,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentSlideIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          //SizedBox(height: 36,),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildSlideIndicators(),
                ),
              ],
            ),
          ),

          SizedBox(height: 60.0),

          Container(
            width: 351,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed("/register");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF00020), // couleur de fond du bouton
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
              ),
              child: Container(
                width: 187,  // Ajustez la largeur selon vos besoins
                height: 20,  // Ajustez la hauteur selon vos besoins
                alignment: Alignment.center,
                child: Text(
                  'Suivant',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
          )



          /*Container(
            width: 351,
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 144, vertical: 17),
            decoration: ShapeDecoration(
              color: Color(0xFFF00020),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Suivant',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),*/,
          SizedBox(height: 60.0),
        ],
      ),
    );
  }

  List<Widget> _buildSlideIndicators() {
    return List.generate(
      _imagesList.length,
      (index) => Container(
        width: 8.0,
        height: 8.0,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: _currentSlideIndex == index
              ? Colors.white
              : Colors.grey.withOpacity(0.4),
        ),
      ),
    );
  }
}

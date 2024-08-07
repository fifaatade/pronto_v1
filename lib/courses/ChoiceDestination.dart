import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
//import 'package:map/Parts/ChoiceDestination/SideBar.dart';

class ChoiceDestination extends StatefulWidget {
  @override
  _ChoiceDestinationState createState() => _ChoiceDestinationState();
}

class _ChoiceDestinationState extends State<ChoiceDestination> {
  void initState() {
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Action de retour
          },
        ),
        //title: Text('Champ de recherche avec icône agrandie'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [

                  const SizedBox(height: 20),
                  Container(
                    height: 55,
                    padding: const EdgeInsets.only(left: 23, right: 105),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF4F4F4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4.0), // Ajuster le padding pour pousser l'icône à gauche
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 30, // Définissez la taille de l'icône ici
                          ),
                        ),
                        labelText: 'Départ',
                        labelStyle: TextStyle(
                          color: Color(0xFF868686),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 44,),
                      SizedBox(
                        width: 1, // Adjust the width of the SizedBox as needed
                        height: 50,
                        child: Container(
                          color: Colors.black, // Color of the vertical line
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 55,
                    padding: const EdgeInsets.only(left: 23, right: 105),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF4F4F4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4.0), // Ajuster le padding pour pousser l'icône à gauche
                          child: Icon(
                            Icons.my_location,
                            size: 30, // Définissez la taille de l'icône ici
                          ),
                        ),
                        labelText: 'Destination',
                        labelStyle: TextStyle(
                          color: Color(0xFF868686),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('Container clicked');
                    },
                    child: Container(
                      height: 42,
                      decoration: BoxDecoration(color: Color(0xFFF8F8F8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.star_border,
                              size: 30, // Définissez la taille de l'icône ici
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Lieux enregistrés',
                                  style: TextStyle(
                                    color: Color(0xFF303131),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      print('Container clicked ');
                    },
                    child: Container(
                      height: 42,
                      decoration: BoxDecoration(color: Color(0xFFF8F8F8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.map_outlined,
                              size: 30, // Définissez la taille de l'icône ici
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Définir le lieu sur la carte',
                                  style: TextStyle(
                                    color: Color(0xFF303131),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

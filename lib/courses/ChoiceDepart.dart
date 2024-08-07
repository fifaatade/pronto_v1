import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:map/Parts/ChoiceDepart/SideBar.dart';

class ChoiceDepart extends StatefulWidget {
  @override
  _ChoiceDepartState createState() => _ChoiceDepartState();
}

class _ChoiceDepartState extends State<ChoiceDepart> {
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
                  Text(
                    'Où souhaitez-vous que votre prise en charge ait lieu? ',
                    style: TextStyle(
                      color: Color(0xFF282828),
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      //height: 0.06,
                    ),
                  ),
                  SizedBox(height: 20,),
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
                            Icons.search,
                            size: 30, // Définissez la taille de l'icône ici
                          ),
                        ),
                        labelText: 'Recherche',
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
                    children: [
                      const Spacer(), // Utilisé pour pousser le bouton vers la droite
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // Coins non arrondis
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed('/course_choice_destination');
                        },
                        child: const Text('Suivant',style: TextStyle(
                          color: Color(0xFFF00020),
                          fontFamily: 'Poppins',
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

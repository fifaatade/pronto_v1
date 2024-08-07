import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterData extends StatefulWidget {

  @override
  _RegisterDataState createState() => _RegisterDataState();
}

class _RegisterDataState extends State<RegisterData> {
  int _selectedGender = 0;
  bool _termsChecked = false;
  int selectedGender = 0; // 0 for male, 1 for female
  bool acceptedTerms = false;


  void initState() {
    super.initState();
  }

  final TextEditingController _controller = TextEditingController();
  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'BJ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25.0),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 1.0),
                child: Image.asset(
                  "assets/images/landing/information.png",
                  fit: BoxFit.cover,
                  height: 300,
                ),

              ),
            ),
            Center(
              child: SizedBox(
                width: 351,
                child: Text(
                  'Informations personnelles',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              )
            ),
            SizedBox(height: 19.0),


            Container(
              width: 351,
              height: 55,
              padding: const EdgeInsets.only(left: 23, right: 105),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nom',
                  labelStyle: TextStyle(
                    color: Color(0xFF646463),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            )
            ,


            SizedBox(height: 16.0),

            Container(
              width: 351,
              height: 55,
              padding: const EdgeInsets.only(left: 23, right: 105),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Prénom',
                  labelStyle: TextStyle(
                    color: Color(0xFF646463),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),







            SizedBox(height: 20.0),
            Container(
              width: 351,
              height: 55,
              padding: const EdgeInsets.only(left: 23, right: 105),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Color(0xFF646463),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),

            SizedBox(height: 5.0),

            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  buildRadioButton('Homme', 0),
                  const SizedBox(width: 35),
                  buildRadioButton('Femme', 1),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Checkbox(
                    value: acceptedTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        acceptedTerms = value!;
                      });
                    },
                    activeColor: Color(0xFFF00020),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'J’ai lu et accepté les',
                          style: TextStyle(
                            color: Color(0xFF2F2F2F),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'conditions générales',
                          style: TextStyle(
                            color: Color(0xFFF00020),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 351,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed("/password");
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
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRadioButton(String label, int value) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio(
            value: value,
            groupValue: selectedGender,
            onChanged: (int? value) {
              setState(() {
                selectedGender = value!;
              });
            },
            activeColor: Color(0xFF2C2C2E),
          ),
          Text(
            label,
            style: TextStyle(
              color: Color(0xFF2C2C2E),
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }

}

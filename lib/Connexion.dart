import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Connexion extends StatefulWidget {

  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {


  void initState() {
    super.initState();
  }
  bool _obscureText = true;

  final TextEditingController _controller = TextEditingController();
  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'BJ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 1.0),
                child: Image.asset(
                  "assets/images/landing/Connexion.png",
                  fit: BoxFit.cover,
                ),

              ),
            ),
            SizedBox(height: 60.0),
            Center(
                child: Text(
                  'Connexion',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
            ),
            SizedBox(height: 19.0),


            Container(
              width: 351,
              //height: 55,
              //padding: const EdgeInsets.only(left: ),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 1,
                    height: 45,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 5.62,
                          top: 11.51,
                          child: Container(
                            width: 30.76,
                            height: 21.97,
                            child: Stack(children: [
                              // Ajoutez ici l'icône de choix du pays
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: InternationalPhoneNumberInput(
                      textStyle: TextStyle(
                        color: Color(0xFF646463),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      onInputChanged: (PhoneNumber number) {
                        // Gérez les changements dans le numéro de téléphone ici
                        //print(number.completeNumber);
                      },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.DROPDOWN,
                        setSelectorButtonAsPrefixIcon: true,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      selectorTextStyle: TextStyle(color: Colors.black),
                      initialValue: PhoneNumber(isoCode: 'BJ'), // Choix initial du pays
                      textFieldController: TextEditingController(),
                      formatInput: true,
                      keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                      inputBorder: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.0),

            /*Container(
              width: 351,
              height: 55,
              padding: const EdgeInsets.only(left: 23, right: 105),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    child: Stack(children: [
                                      Icon(Icons.lock_outline)
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      obscureText: true, // Champ de mot de passe masqué
                      decoration: InputDecoration(
                        hintText: 'Saisissez votre mot de passe',
                        hintStyle: TextStyle(
                          color: Color(0xFF646463),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),*/

            Container(
              width: 351,
              height: 55,
              padding: const EdgeInsets.only(left: 9, right: 14),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: TextFormField(
                //controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  labelStyle: TextStyle(
                    color: Color(0xFF646463),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Container(
              width: 351,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed("/home");
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
}

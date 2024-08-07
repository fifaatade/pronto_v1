import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Register extends StatefulWidget {

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int _selectedGender = 0;
  bool _termsChecked = false;

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
            SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 1.0),
                child: Image.asset(
                  "assets/images/landing/Inscrivez-vous.png",
                  fit: BoxFit.cover,
                ),

              ),
            ),
            Center(
              child: Text(
                'Inscrivez-vous',
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

            Container(
              width: 351,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed("/confirmation");
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





            SizedBox(height: 20.0),
            Container(
              width: 353,
              height: 24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 152,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Center(
                    child: Text(
                      'ou',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    width: 152,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique pour le bouton Google
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF4F4F4), // Couleur de fond du bouton
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Container(
                //width: 300,
                height: 55,
                padding: const EdgeInsets.only(left: 55,right: 75),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        // Ajoutez ici le style de décoration pour l'icône de Google
                      ),
                      child: Stack(
                        children: [
                          // Ajoutez ici l'icône de Google
                        ],
                      ),
                    ),
                    const SizedBox(width: 1),
                    Text(
                      'Continuer avec Facebook',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique pour le bouton Google
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF4F4F4), // Couleur de fond du bouton
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Container(
                //width: 300,
                height: 55,
                padding: const EdgeInsets.only(left: 60,right: 80),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        // Ajoutez ici le style de décoration pour l'icône de Google
                      ),
                      child: Stack(
                        children: [
                          // Ajoutez ici l'icône de Google
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Continuer avec Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: GestureDetector(
                  onTap: () {
                    // Ajoutez ici la logique à exécuter lorsque le lien est cliqué
                  },
                  child: SizedBox(
                    width: 150,
                    height: 26,
                    child: Text(
                      'J’ai déjà un compte.',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black, // ou la couleur de lien que vous préférez
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

}

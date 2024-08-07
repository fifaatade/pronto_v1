import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Confirmation extends StatefulWidget {
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  List<String> codeDigits = List.filled(4, '');

  void updateCodeDigit(int index, String value) {
    setState(() {
      codeDigits[index] = value;
    });

    // Move focus to the next input field when a digit is entered
    if (index < codeDigits.length - 1 && value.isNotEmpty) {
      FocusScope.of(context).nextFocus();
    }
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 145,
            ),
            Center(
              child: Image.asset(
                'assets/images/landing/comfirmez.png',
                fit: BoxFit.cover,
                width: 250,
              ),
            ),
            SizedBox(height: 32.0),
            SizedBox(
              width: 343,
              child: Text(
                'Confirmez ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: 275,
              height: 24,
              child: Text(
                'Saisissez le code à 4 chiffres envoyé au ',
                style: TextStyle(
                  color: Color(0xFF2F2F2F),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            Center(
              child: Text(
                '+229 96265065',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 9),
            Container(
              width: 77,
              height: 21,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(children: []),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/register');
                    },
                    child: Text(
                      'Modifier ',
                      style: TextStyle(
                        color: Color(0x662F2F2F),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.0),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(codeDigits.length, (index) {
                  return Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[300],
                    ),
                    //margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      onChanged: (value) => updateCodeDigit(index, value),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: TextStyle(fontSize: 24),
                      decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 42.0),

            Container(
              width: 350,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed("/register_data");
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
            SizedBox(height: 6.0),
            TextButton(
              child: Text(
                'Je n’ai pas reçu le code',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () => {
                // Renvoyer le code
              },
            )
          ],
        ),
      ),
    );
  }
}

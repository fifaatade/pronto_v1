import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Password extends StatefulWidget {

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {


  bool _obscureText = true;
  void initState() {
    super.initState();
  }

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();


  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80.0),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 1.0),
                child: Image.asset(
                  "assets/images/landing/Créer mot de passe.png",
                  fit: BoxFit.cover,
                  height: 320,
                ),

              ),
            ),
            Center(
              child: SizedBox(
                width: 351,
                child: Text(
                  'Définir un mot de passe',
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
              padding: const EdgeInsets.only(left: 9, right: 14),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: TextFormField(
                controller: _passwordController,
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

            SizedBox(height: 16.0),

            Container(
              width: 351,
              height: 55,
              padding: const EdgeInsets.only(left: 9, right: 14),
              decoration: ShapeDecoration(
                color: Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: TextFormField(
                controller: _passwordConfirmController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Confirmer le mot de passe',
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
                  Get.toNamed("/connexion");
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

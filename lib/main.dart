/// Flutter code sample for ExpansionPanelList

// Here is a simple example of how to implement ExpansionPanelList.
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:map/Connexion.dart';
import 'package:map/Landing.dart';
import 'package:map/Confirmation.dart';
import 'package:map/Connexion.dart';
import 'package:map/Home.dart';
import 'package:map/Landing.dart';
import 'package:map/Password.dart';
import 'package:map/Register.dart';
import 'package:map/RegisterData.dart';
import 'package:map/courses/ChoiceDestination.dart';
import 'package:map/courses/Choixcourse.dart';
import 'package:map/courses/Commander.dart';
import 'package:map/courses/ChoiceDepart.dart';
import 'package:map/courses/Ramasser.dart';
import 'package:map/school/School.dart';
import 'Index.dart';
import 'utils/user_simple_preference.dart';
import 'package:get/get.dart';
import 'utils/language.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await UserSimplePreferences.init();
  runApp(const MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp() : super();

  static const String _title = 'PRONTO USER';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: _title,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color(0xFFF00020),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFF00020)),
      ),
      initialRoute: "/landing",
      debugShowCheckedModeBanner: false,
      //defaultTransition: Transition.native,
      //translations: MyTranslations(),
      locale: const Locale('fr', 'FR'),
      getPages: [
        GetPage(
          name: '/index',
          page: () => Index(),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: '/landing',
          page: () => Landing(),
          transition: Transition.zoom,
          //customTransition: SizeTransitions(),
          //binding: SampleBind(),
       ),
        GetPage(
          name: '/connexion',
          transition: Transition.cupertino,
          page: () => Connexion(),
        ),
        GetPage(
          name: '/confirmation',
          transition: Transition.cupertino,
          page: () => Confirmation(),
        ),
        GetPage(
          name: '/register',
          transition: Transition.cupertino,
          page: () => Register(),
        ),
        GetPage(
          name: '/register_data',
          transition: Transition.cupertino,
          page: () => RegisterData(),
        ),
        GetPage(
          name: '/password',
          transition: Transition.cupertino,
          page: () => Password(),
        ),
        GetPage(
          name: '/home',
          transition: Transition.leftToRightWithFade,
          page: () => Home(),
        ),
        GetPage(
          name: '/school',
          transition: Transition.leftToRightWithFade,
          page: () => School(),
        ),
        GetPage(
          name: '/commander',
          transition: Transition.leftToRightWithFade,
          page: () => const Commander(),
        ),
        GetPage(
          name: '/ramasser',
          transition: Transition.leftToRightWithFade,
          page: () => Ramasser(),
        ),
        GetPage(
          name: '/choisir_couses',
          transition: Transition.leftToRightWithFade,
          page: () => Choixcourse(),
        ),
        ////////////////////////Courses///////////////////////////
        GetPage(
          name: '/course_choice_depart',
          transition: Transition.leftToRightWithFade,
          page: () => ChoiceDepart(),
        ),
        GetPage(
          name: '/course_choice_destination',
          transition: Transition.leftToRightWithFade,
          page: () => ChoiceDestination(),
        ),
      ],
    );
  }
}



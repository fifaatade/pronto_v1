import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Define the scale animation
    _scaleAnimation = Tween<double>(
      begin: 0.1, // starting scale
      end: 25.0, // ending scale
    ).animate(_animationController);

    // Start the animation
    _animationController.repeat(reverse: true);

    Timer(Duration(seconds: 2), () {
      // Navigate to the new page
      Get.toNamed('/index');
    });
  }

  @override
  void dispose() {
    // Dispose the animation controller
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xFFF00020),
          child: Center(
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Image.asset('assets/images/logo_pronto_blanc.png'),
            ),
          ),
        ),
      ),
    );
  }
}

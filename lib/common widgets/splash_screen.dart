import 'package:flutter/material.dart';
import 'package:indus_app/common%20widgets/onboarding_screens.dart';
import 'package:indus_app/constants/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to OnboardingScreen after 5 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.cardBackground, // Use AppConstant for background color
      body: Center(
        child: Image.asset(
          'assets/images/induslogo.png',
          width: 250, // Set the desired width
          height: 250, // Set the desired height
        ),
      ),
    );
  }
}

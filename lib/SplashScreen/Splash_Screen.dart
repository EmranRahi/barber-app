import 'package:barber_app/LogIn%20Option/login_optionScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  delay() async {
    await Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login_Option()),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delay();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            'assets/images/Logo.png',
            scale: 3.5,
          ),
        ),
      ),
    );
  }
}

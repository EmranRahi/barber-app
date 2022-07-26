import 'package:barber_app/Sign%20In/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/CustomDesignButton.dart';

class Login_Option extends StatefulWidget {
  const Login_Option({Key? key}) : super(key: key);

  @override
  State<Login_Option> createState() => _Login_OptionState();
}

class _Login_OptionState extends State<Login_Option> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF866EE1),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Center(
                child: Image.asset(
                  'assets/images/flagman.png',
                  scale: 4.5,
                ),
              ),
            ),
            CustomDesignButton(
              height: 50.h,
              width: 348.w,
              onPressed: () {},
              text: "Create an Account",
              btncolor: Colors.white,
              textColor: Color(0xFF866EE1),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomDesignButton(
              height: 50.h,
              width: 348.w,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignIn_Screen()));
              },
              text: "Sign In",
              borderColor: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

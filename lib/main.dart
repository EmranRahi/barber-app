import 'package:barber_app/Choose%20Services/chooseServices.dart';
import 'package:barber_app/Experience/ExperienceLevel.dart';
import 'package:barber_app/Price%20Range/PriceRangeScreen.dart';
import 'package:barber_app/Profession/profession_Screen.dart';
import 'package:barber_app/Sign%20In/signin_screen.dart';
import 'package:barber_app/SplashScreen/Splash_Screen.dart';
import 'package:barber_app/VendorUser/VendorUserScreen.dart';
import 'package:barber_app/util/multi_var_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'Create Account Screen/Create_Account.dart';
import 'Resset Password/resset_password.dart';

void main() {
  runApp(const BarBerApp());
}

class BarBerApp extends StatelessWidget {
  const BarBerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Barber App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PriceRangeScreen(),
      );
    });
  }
}

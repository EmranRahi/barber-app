import 'package:barber_app/widgets/CustomDesignButton.dart';
import 'package:barber_app/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RessetPassword extends StatefulWidget {
  const RessetPassword({Key? key}) : super(key: key);

  @override
  State<RessetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<RessetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, top: 30.h, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Resset Password',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(24),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                "Please enter your email address to\n requset reset your password",
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(15),
                ),
              ),
              SizedBox(height: 26.h),
              Custom_TextField(
                hint: "abc@gmail.com",
                width: 335.w,
                height: 55.h,
                brcolor: Color(0xFFE4DFDF),
                prefixIcon: Icon(Icons.mail),
              ),
              SizedBox(height: 26.h),
              Center(
                child: CustomDesignButton(
                  width: 271.w,
                  height: 57.h,
                  text: "SEND ",
                  btncolor: Color(0xFF866EE1),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

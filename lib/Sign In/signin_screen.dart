import 'package:barber_app/Sign%20In/signin_provider.dart';
import 'package:barber_app/widgets/CustomDesignButton.dart';
import 'package:barber_app/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignIn_Screen extends StatefulWidget {
  const SignIn_Screen({Key? key}) : super(key: key);

  @override
  State<SignIn_Screen> createState() => _SignIn_ScreenState();
}

class _SignIn_ScreenState extends State<SignIn_Screen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignIn_Provider(),
      child: SafeArea(
        child: Scaffold(
          body: Consumer<SignIn_Provider>(builder: (context, model, child) {
            return Padding(
              padding: EdgeInsets.only(
                top: 30.h,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset('assets/images/Group1.png', scale: 3),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'BarBer',
                      style: GoogleFonts.roboto(
                          fontSize: ScreenUtil().setSp(28.sp),
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Sign In',
                      style: GoogleFonts.roboto(
                          fontSize: ScreenUtil().setSp(28.sp),
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Custom_TextField(
                      hint: "abc@gmail.com",
                      width: 335.w,
                      height: 60.h,
                      brcolor: Colors.grey,
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Custom_TextField(
                      hint: "Your Password",
                      width: 335.w,
                      height: 60.h,
                      brcolor: Colors.grey,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      sufixIcon: Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.scale(
                            scale: 1.3,
                            child: Switch(
                              activeColor: Color(0xFF866EE1),
                              onChanged: (bool value) {
                                model.toggleSwitch(model.isSwitched);
                              },
                              value: model.isSwitched,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Forgot Password?"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomDesignButton(
                      width: 271.w,
                      height: 58.h,
                      text: "SIGN IN",
                      btncolor: Color(0xFF866EE1),
                      icon: (Icons.arrow_forward_rounded),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          // ignore: unnecessary_new
                          child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 10.0),
                              child: Divider(
                                color: Colors.grey,
                                height: 36,
                                thickness: 3,
                              )),
                        ),
                        Text(
                          "OR",
                          style: GoogleFonts.manrope(
                            fontSize: ScreenUtil().setSp(14.sp),
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          // ignore: unnecessary_new
                          child: new Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Divider(
                              color: Colors.grey,
                              height: 36,
                              thickness: 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              ScreenUtil().setHeight(10.h),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/google.png',
                            scale: 2,
                          ),
                        ),
                        Container(
                          width: 100.w,
                          height: 60.h,
                          // width: ScreenUtil().setWidth(81.w),
                          // height: ScreenUtil().setHeight(47.h),
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              ScreenUtil().setHeight(10.h),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/Group.png",
                            scale: 2,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

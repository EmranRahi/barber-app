import 'package:barber_app/util/multi_var_provider.dart';
import 'package:barber_app/widgets/CustomDesignButton.dart';
import 'package:barber_app/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Create_Account_Screen extends StatefulWidget {
  @override
  State<Create_Account_Screen> createState() => _Create_Account_ScreenState();
}

class _Create_Account_ScreenState extends State<Create_Account_Screen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return MultiVarProvider();
      },
      child: SafeArea(
        child: Scaffold(
          body: Consumer<MultiVarProvider>(
            builder: (context, model, child) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create Account',
                        style: GoogleFonts.manrope(
                          fontSize: ScreenUtil().setSp(28.sp),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20.h),
                      ),
                      Custom_TextField(
                        hint: "Full Name",
                        height: 65.h,
                        width: 350.w,
                        brcolor: Colors.grey,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Custom_TextField(
                        hint: "abc@Email.com",
                        height: 65.h,
                        width: 350.w,
                        brcolor: Colors.grey,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Custom_TextField(
                        hint: "Your Password",
                        height: 65.h,
                        width: 350.w,
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
                      SizedBox(
                        height: 20.h,
                      ),
                      Custom_TextField(
                        hint: "Confirm Password",
                        height: 65.h,
                        width: 350.w,
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
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: model.isChecked,
                              onChanged: (value) {
                                model.setChecked = value!;
                              }),
                          RichText(
                            text: TextSpan(
                                text: 'I agree the ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Terms of Services ',
                                    style: TextStyle(
                                        color: Color(0xFF866EE1), fontSize: 13),
                                  ),
                                  TextSpan(
                                    text: '& ',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy ',
                                    style: TextStyle(
                                        color: Color(0xFF866EE1), fontSize: 11),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomDesignButton(
                        height: 50.h,
                        width: 348.w,
                        onPressed: () {},
                        text: "Create an Account",
                        btncolor: model.isChecked == true
                            ? Color(0xFF866EE1)
                            : Color(0xFFE7E2F9),
                        textColor: model.isChecked == true
                            ? Colors.white
                            : Color(0xFFB6A8ED),
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
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 20.0),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Already have an account?',
                              style: GoogleFonts.manrope(
                                fontSize: ScreenUtil().setSp(14.sp),
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )),
                          TextButton(
                              onPressed: (() {}), child: Text('Sign In')),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

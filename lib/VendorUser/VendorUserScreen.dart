import 'package:barber_app/VendorUser/vendorProvider.dart';
import 'package:barber_app/widgets/CustomDesignButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorUserScreen extends StatefulWidget {
  const VendorUserScreen({Key? key}) : super(key: key);

  @override
  State<VendorUserScreen> createState() => _VendorUserScreenState();
}

class _VendorUserScreenState extends State<VendorUserScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return VendorProvider();
      },
      child: Consumer<VendorProvider>(
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70.0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Join as a Vendor or User",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(24.sp),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(0);
                    },
                    child: Container(
                      width: 321.0.w,
                      height: 149.0.h,
                      decoration: model.myValue == 0
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0.w,
                              ),
                            )
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0.w,
                              ),
                            ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 280.w,
                            top: 10.h,
                            child: InkWell(
                              onTap: () {
                                model.myBorderChangingFun(0);
                              },
                              child: Container(
                                width: 20.w,
                                height: 20.h,
                                decoration: model.myValue == 0
                                    ? BoxDecoration(
                                        color: Color(0xFF866EE1),
                                        border: Border.all(
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                      )
                                    : BoxDecoration(
                                        color: model.isvisible
                                            ? Color(0xFF0941CE)
                                            : Colors.white,
                                        border: Border.all(
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                      ),
                              ),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              "assets/images/Group7.png",
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 110.h),
                            child: Center(
                              child: Text(
                                "I'm a Vendor",
                                style: GoogleFonts.manrope(
                                  fontSize: ScreenUtil().setSp(20.sp),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(1);
                    },
                    child: Container(
                      width: 321.0.w,
                      height: 149.0.h,
                      decoration: model.myValue == 1
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0.w,
                              ),
                            )
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0.w,
                              ),
                            ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 280.w,
                            top: 10.h,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 20.w,
                                height: 20.h,
                                decoration: model.myValue == 1
                                    ? BoxDecoration(
                                        color: Color(0xFF866EE1),
                                        border: Border.all(
                                          width: 1,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                      )
                                    : BoxDecoration(
                                        color: model.isvisible
                                            ? Color(0xFF0941CE)
                                            : Colors.white,
                                        border: Border.all(
                                          width: 1,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                      ),
                              ),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              "assets/images/Vector.png",
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 110.h),
                            child: Center(
                              child: Text(
                                "i'm a User",
                                style: GoogleFonts.manrope(
                                  fontSize: ScreenUtil().setSp(20.sp),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: CustomDesignButton(
                        btncolor: model.myValue == 0 || model.myValue == 1
                            ? Color(0xFF866EE1)
                            : Color(0xFFE7E2F9),
                        width: 350.w,
                        height: 50.h,
                        text: "Create Account",
                        textColor: Colors.white,
                        onPressed: () {}),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Don't have an account?",
                          style: GoogleFonts.manrope(
                            fontSize: ScreenUtil().setSp(14.sp),
                            color: Colors.black,
                          )),
                      TextButton(
                        onPressed: (() {}),
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.manrope(
                            fontSize: ScreenUtil().setSp(14.sp),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

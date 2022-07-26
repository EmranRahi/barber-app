import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../widgets/CustomNextButton.dart';
import '../widgets/CustomSelectText.dart';
import 'chooseProvider.dart';

class ChooseServicesScreen extends StatelessWidget {
  const ChooseServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChooseProvider(),
      child: Consumer<ChooseProvider>(
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setHeight(30.h),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Choose Services",
                          style: GoogleFonts.manrope(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(0);
                    },
                    child: CustomSelectText(
                      myText: "Do you provide services for woman?",
                      width: 320.w,
                      height: 60.h,
                      child: model.myValue == 0
                          ? Icon(
                              Icons.check_circle,
                              color: Color(0xFF866EE1),
                            )
                          : SizedBox(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(1);
                    },
                    child: CustomSelectText(
                      myText: "Do you provide services for children?",
                      width: 320.w,
                      height: 60.h,
                      myFontSize: 12.sp,
                      child: model.myValue == 1
                          ? Icon(
                              Icons.check_circle,
                              color: Color(0xFF866EE1),
                            )
                          : SizedBox(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(2);
                    },
                    child: CustomSelectText(
                      myText: "Does your fecility accomondate the handicap?",
                      width: 320.w,
                      height: 60.h,
                      myFontSize: 12.sp,
                      child: model.myValue == 2
                          ? Icon(
                              Icons.check_circle,
                              color: Color(0xFF866EE1),
                            )
                          : SizedBox(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(3);
                    },
                    child: CustomSelectText(
                      myText: "Do you provide in Home mobile services?",
                      width: 320.w,
                      height: 60.h,
                      myFontSize: 13.sp,
                      child: model.myValue == 3
                          ? Icon(
                              Icons.check_circle,
                              color: Color(0xFF866EE1),
                            )
                          : SizedBox(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(4);
                    },
                    child: CustomSelectText(
                      myText: "Do you have days your services are discounted?",
                      myFontSize: 12.sp,
                      width: 320.w,
                      height: 60.h,
                      child: model.myValue == 4
                          ? Icon(
                              Icons.check_circle,
                              color: Color(0xFF866EE1),
                            )
                          : SizedBox(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(5);
                    },
                    child: CustomSelectText(
                      myText: "what is the price range for your services?",
                      width: 320.w,
                      height: 60.h,
                      myFontSize: 14.sp,
                      child: model.myValue == 5
                          ? Icon(
                              Icons.check_circle,
                              color: Color(0xFF866EE1),
                            )
                          : SizedBox(),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      // width: 150,
                      // height: 60.h,

                      child: InkWell(
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {},
                          child: CustomNextButton()),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

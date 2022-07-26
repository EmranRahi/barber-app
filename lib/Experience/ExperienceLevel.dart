import 'package:barber_app/widgets/CustomNextButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../widgets/CustomSelectText.dart';
import 'ExperienceProvider.dart';

class ExperienceLevel extends StatefulWidget {
  ExperienceLevel({Key? key}) : super(key: key);

  @override
  State<ExperienceLevel> createState() => _ExperienceLevelState();
}

class _ExperienceLevelState extends State<ExperienceLevel> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExperienceProvider(),
      child: Consumer<ExperienceProvider>(
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().setHeight(50.h)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Your Experience Level",
                          style: GoogleFonts.poppins(
                              fontSize: ScreenUtil().setSp(24.sp),
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      model.myBorderChangingFun(0);
                    },
                    child: CustomSelectText(
                      myText: "SuperStar",
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
                      myText: "All Star",
                      width: 320.w,
                      height: 60.h,
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
                      myText: "Veteran",
                      width: 320.w,
                      height: 60.h,
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
                      myText: "Rookie Sensation",
                      width: 320.w,
                      height: 60.h,
                      child: model.myValue == 3
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

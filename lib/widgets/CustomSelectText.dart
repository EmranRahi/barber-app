import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSelectText extends StatelessWidget {
  CustomSelectText({
    required this.myText,
    required this.child,
    required this.width,
    required this.height,
    this.myFontSize,
  });
  String myText;
  final Widget child;
  double width;
  double height;
  double? myFontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 15.w,
            ),
            child: InkWell(
              child: Text(
                myText,
                style: GoogleFonts.manrope(
                  fontSize: myFontSize,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: Container(
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

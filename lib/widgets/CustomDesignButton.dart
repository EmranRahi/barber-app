import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomDesignButton extends StatefulWidget {
  CustomDesignButton({
    Key? key,
    required this.width,
    required this.height,
    this.radius,
    this.borderWidth,
    this.borderColor,
    this.btncolor,
    this.textColor,
    required this.text,
    required this.onPressed,
    this.fontSize,
    this.icon,
    this.iconcolor,
    this.iconSize,
  }) : super(key: key);

  double width;
  double height;
  double? radius;
  double? borderWidth;
  Color? borderColor;
  Color? btncolor;
  Color? textColor;
  String text;
  VoidCallback onPressed;
  double? fontSize;
  IconData? icon;
  Color? iconcolor;
  double? iconSize;

  @override
  State<CustomDesignButton> createState() => _CustomDesignButtonState();
}

class _CustomDesignButtonState extends State<CustomDesignButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.btncolor,
          borderRadius: BorderRadius.circular(widget.radius ?? 12),
          border: Border.all(
            color: widget.borderColor ?? Colors.transparent,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: GoogleFonts.manrope(
                  fontSize: widget.fontSize ?? ScreenUtil().setSp(20.sp),
                  fontWeight: FontWeight.bold,
                  color: widget.textColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  widget.icon,
                  color: widget.iconcolor,
                  size: widget.iconSize ?? ScreenUtil().setSp(20.sp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

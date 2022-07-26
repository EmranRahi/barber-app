import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Custom_TextField extends StatelessWidget {
  Custom_TextField({
    Key? key,
    required this.hint,
    this.prefixIcon,
    this.sufixIcon,
    this.style,
    this.fillColor,
    this.borderRadius,
    this.counterText,
    this.maxLines,
    this.color,
    this.text,
    this.error,
    this.helpertxt,
    this.iconcolor,
    this.iconColor,
    this.boxheight,
    this.hoverColor,
    this.hintstyle,
    required this.width,
    required this.height,
    this.fieldColor,
    this.brcolor,
    this.onChanged,
    this.isClick = false,
  }) : super(key: key);

  final String hint;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final Widget? style;
  final bool? fillColor;
  final double? borderRadius;
  final String? counterText;
  final int? maxLines;
  final Color? color;
  String? text;
  String? error;
  String? helpertxt;
  String? iconcolor;
  Color? iconColor;
  TextStyle? hintstyle;
  double? boxheight;
  Color? hoverColor;
  double? width;
  double? height;
  Color? brcolor;
  Color? fieldColor;
  VoidCallback? onChanged;
  bool isClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? ScreenUtil().setWidth(300.w),
      height: height ?? ScreenUtil().setHeight(50.h),
      decoration: BoxDecoration(
        color: fieldColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: brcolor ?? Colors.transparent,
          width: 2,
        ),
      ),
      child: TextField(
        maxLines: maxLines,
        onTap: () {},
        decoration: InputDecoration(
          constraints: BoxConstraints(maxHeight: boxheight ?? 55.h.w),
          fillColor: color,
          filled: fillColor,
          hintText: hint,
          prefixIcon: prefixIcon,
          suffixIcon: isClick ? sufixIcon : null,
          counterText: counterText,
          labelText: text,
          errorText: error,
          helperText: helpertxt,
          iconColor: iconColor,
          hintStyle: hintstyle,
          hoverColor: hoverColor ?? Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                borderRadius ?? 30.r,
              ),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}

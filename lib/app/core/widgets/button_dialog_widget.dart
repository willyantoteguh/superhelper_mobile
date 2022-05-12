import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/pallete.dart';

primaryButtonColorWrap(String title, Color bgColor, Color textColor ,Function onClick, {
  double? minwidth,
  double? fontSize,
  double? height,
  Color? borderColor,
  Widget? icon,
  double? divider,
  bool? isLeftIcon,
  MainAxisAlignment? alignment
  }){
  return MaterialButton(
      color: bgColor,
      minWidth: minwidth,
      splashColor: Colors.white,
      height: (height != null) ? height : 45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: (borderColor != null) ? borderColor : bgColor,
          width: 1
        )
      ),
      child: Row(
        mainAxisAlignment: (alignment != null ) ? alignment : MainAxisAlignment.center,
        children: [
          icon != null ? (isLeftIcon == true) ? icon : Container() : Container(),
          SizedBox(width: divider,),
          Text(
            title,
            textAlign: TextAlign.center,
            style: regularText.copyWith(fontSize: (fontSize != null) ? fontSize : 13, color: textColor, fontWeight: FontWeight.w400),
          ),
          SizedBox(width: divider,),
          icon != null ? (isLeftIcon == true) ? Container() : icon : Container(),
        ],
      ),
      onPressed: () {
        onClick();
      });
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kehadiranmu/app/core/utils/pallete.dart';

  Widget textFieldWidget(String label, TextEditingController controller, {bool? obscureText}) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: ScreenUtil().setHeight(40)
      ),
      child: TextField(
            autocorrect: true,
            controller: controller,
            // ignore: unnecessary_null_comparison
            obscureText: obscureText != null ? obscureText : false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: gradient1,
                  width: 1
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: gradient1,
                  width: 1
                ),
              ),
              focusColor: gradient2,
              hintText: label
            ),
      ),
    );
  }
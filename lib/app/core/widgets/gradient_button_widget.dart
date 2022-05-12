import 'package:flutter/material.dart';

import '../utils/pallete.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  //final Function onPressed;

  const GradientButton({
    required this.child,
    required this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    //required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ScreenUtil().screenWidth / 2 - 25.w,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: greyShimmer,
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: child,
    );
  }
}
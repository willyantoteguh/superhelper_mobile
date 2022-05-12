import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Color blackColor = Color(0xff000000);
Color whiteColor = Color(0xffFFFFFF);
Color greyColor = Color(0Xff5D606C);
Color redColor = Colors.red;

Color gradient1 = Color(0xff890596);
Color gradient2 = Color(0xffF8286C);

Color greyShimmer = Color(0xffE7E7E7);
Color shimmerBaseColor =  Color(0xffdcc7ff);
Color shimmerHighlightColor = Color(0xFFE0E0E0);

TextStyle regularText = GoogleFonts.poppins().copyWith(color: blackColor);
TextStyle boldRegText = GoogleFonts.poppins().copyWith(color: blackColor, fontWeight: FontWeight.bold);
TextStyle greyText = GoogleFonts.raleway().copyWith(color: greyColor);
TextStyle blackText = GoogleFonts.raleway().copyWith(color: blackColor);
TextStyle boldText = GoogleFonts.raleway()
    .copyWith(color: blackColor, fontWeight: FontWeight.bold);
TextStyle whiteText = GoogleFonts.raleway().copyWith(color: whiteColor);
TextStyle whiteBoldText = GoogleFonts.raleway()
    .copyWith(color: whiteColor, fontSize: 20, fontWeight: FontWeight.w800);

TextStyle defaultText = GoogleFonts.raleway();

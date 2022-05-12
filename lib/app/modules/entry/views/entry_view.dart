import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../core/utils/pallete.dart';
import '../../../core/widgets/gradient_button_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/entry_controller.dart';

class EntryView extends GetView<EntryController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(371, 711),
      builder: (c) => Container(
          color: whiteColor,
          child: SafeArea(
            child: Scaffold(
              body:  Container(
                height: ScreenUtil().screenHeight,
                width: ScreenUtil().screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(
                    height: 45.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Image.asset('assets/images/logosh.png'),
                  ),
                    SizedBox(
                    height: 45.h,
                  ),
                  Text(
                    'One more step to access\nall the greatness.',
                    style: boldText.copyWith(
                      fontSize: 18.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    "Let's log in or register",
                    style: blackText.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 65.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: GradientButton(
                          height: 35.h,
                          width: ScreenUtil().screenWidth / 2.5,
                          child: Center(
                            child: Text('Log In',
                                style: whiteText.copyWith(
                                  fontSize: 16,
                                )),
                          ),
                          gradient: LinearGradient(colors: <Color>[gradient1, gradient2]),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.REGISTER);
                        },
                        child: GradientButton(
                          height: 35.h,
                          width: ScreenUtil().screenWidth / 2.5,
                          child: Center(
                            child: Text('Register',
                                style: whiteText.copyWith(
                                  fontSize: 16,
                                )),
                          ),
                          gradient: LinearGradient(colors: <Color>[gradient1, gradient2]),
                        
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 65.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "By registering, I aware and understand the\nPrivacy Policy and Terms & Conditions.",
                      style:
                          blackText.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 60),
                ]),
              )),
          ),
      
        
      ),
    );
  }
}

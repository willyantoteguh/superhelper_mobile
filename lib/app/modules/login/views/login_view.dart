import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kehadiranmu/app/core/widgets/gradient_button_widget.dart';
import 'package:kehadiranmu/app/core/widgets/textfield_widget.dart';
import 'package:kehadiranmu/app/modules/entry/views/entry_view.dart';

import '../../../core/utils/pallete.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[gradient1, gradient2]),
        ),
        child: SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                Container(
                  height: ScreenUtil().screenHeight,
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: <Color>[gradient1, gradient2]),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: ListView(
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  Get.offNamed(Routes.ENTRY);
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: whiteColor,
                                ),
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/images/logosh.png',
                                height: 35.h,
                              ),
                              Spacer(),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            height: ScreenUtil().screenHeight / 1.3,
                            width: ScreenUtil().screenWidth - 40.w,
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            color: whiteColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 80.h,),
                                Center(child: Text('Log In', style: regularText.copyWith(fontSize: 24.sp),)),
                                SizedBox(height: 80.h,),
                                Text('Email', style: regularText.copyWith(fontSize: 16.sp)),
                                textFieldWidget('Example: budi_santoso@gmail.com', controller.emailController),
                                SizedBox(height: 15.h,),
                                Text('Password', style: regularText.copyWith(fontSize: 16.sp)),
                                textFieldWidget('Example: #h4sh7B8adll', controller.passwordController, obscureText: true),
                                Text('Forgot password?', style: regularText.copyWith(fontSize: 12.sp, fontStyle: FontStyle.italic), ),
                                SizedBox(height: 25.h,),
                                InkWell(
                                  onTap: () {
                                    controller.login();
                                  },
                                  child: Center(
                                    child: GradientButton(
                                      height: 35.h,
                                      width: ScreenUtil().screenWidth / 2.5,
                                      gradient: LinearGradient(colors: <Color>[gradient1, gradient2]), 
                                      child: Center(
                                        child: Obx(
                                          () => (controller.isLoading.value) ? Text('Please wait..',
                                            style: whiteText.copyWith(
                                              fontSize: 16.sp,
                                            )) : Text('Login',
                                            style: whiteText.copyWith(
                                              fontSize: 16.sp,
                                            )),
                                        ),
                                    ),),
                                  ),
                                ),
                                SizedBox(height: 25.h,),
                                InkWell(
                                  onTap: () => Get.toNamed(Routes.REGISTER),
                                  child: Text("Don't have an account yet?, Register now, it's free!", style: regularText.copyWith(fontSize: 12.sp, fontStyle: FontStyle.italic, decoration: TextDecoration.underline), )),
                                Spacer(),  
                                Center(child: Text('Need Help?', style: regularText,)),
                                SizedBox(height: 15.h,),
                              
                                
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    
    );
  }
}

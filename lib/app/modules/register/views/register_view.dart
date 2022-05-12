import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../core/utils/pallete.dart';
import '../../../core/widgets/gradient_button_widget.dart';
import '../../../core/widgets/textfield_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
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
                                SizedBox(height: 20.h,),
                                Center(child: Text('Register', style: regularText.copyWith(fontSize: 24.sp),)),
                                SizedBox(height: 40.h,),
                                Text('Your First Name', style: regularText.copyWith(fontSize: 16.sp)),
                                textFieldWidget('Example: budi', controller.firstNameController),
                                SizedBox(height: 15.h,),
                                Text('Your Last Name', style: regularText.copyWith(fontSize: 16.sp)),
                                textFieldWidget('Example: santoso', controller.lastNameController),
                                SizedBox(height: 15.h,),
                                Text('Email', style: regularText.copyWith(fontSize: 16.sp)),
                                textFieldWidget('Example: budi_santoso@gmail.com', controller.emailController),
                                SizedBox(height: 15.h,),
                                Text('Password', style: regularText.copyWith(fontSize: 16.sp)),
                                textFieldWidget('Example: #h4sh7B8adll', controller.passwordController, obscureText: true),
                                SizedBox(height: 25.h,),
                                InkWell(
                                  onTap: () {
                                   controller.submitUser();
                                   Get.toNamed(Routes.ENTRY);
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
                                            )) : Text('Next',
                                            style: whiteText.copyWith(
                                              fontSize: 16.sp,
                                            )),
                                        ),
                                    ),),
                                  ),
                                ),
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

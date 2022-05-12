import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:kehadiranmu/app/core/utils/calendar_utils.dart';
import 'package:kehadiranmu/app/core/utils/pallete.dart';
import 'package:kehadiranmu/app/core/widgets/drawer_widget.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: gradient1,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "SuperHelper",
                style: whiteBoldText,
              ),
              backgroundColor: gradient1,
            ),
            drawer: drawer(context),
            backgroundColor: whiteColor,
            body: Container(
              constraints: BoxConstraints(maxHeight: ScreenUtil().screenHeight),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Promo hari ini", style: boldRegText.copyWith(fontSize: 16.sp),),
                    SizedBox(height: 10.h,),
                    SizedBox(
                      height: ScreenUtil().screenHeight / 4.5,
                      child: CarouselSlider(
                       items: [
                         Image.asset('assets/images/b1.png'),
                         Image.asset('assets/images/b2.png'),
                         Image.asset('assets/images/b3.png'),
                         ],
                       options: CarouselOptions(
                         
                         autoPlay: true,
                       )),
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Lihat Semua', style: boldRegText.copyWith(color: gradient2),),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text("Pilih tanggal bantuan", style: boldRegText.copyWith(fontSize: 16.sp),),
                    SizedBox(height: 10.h,),
                    Container(
                      constraints: BoxConstraints(
                          minHeight: ScreenUtil().screenHeight / 4,
                          minWidth: double.infinity),
                     
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 5,
                          color: whiteColor,
                          child: StatefulBuilder(builder: (context, setState) {
                            return Padding(
                               padding: EdgeInsets.all(10.w),    
                              child: TableCalendar(
                                locale: 'id_ID',
                                startingDayOfWeek: StartingDayOfWeek.monday,
                                firstDay: kFirstDay,
                                lastDay: kLastDay,
                                focusedDay: controller.focusedDay,
                                calendarFormat: controller.calendarFormat,
                                weekendDays: [],
                                selectedDayPredicate: (day) {
                                  return isSameDay(controller.selectedDay, day);
                                },
                                onDaySelected: (selectedDay, focusedDay) {
                                  if (!isSameDay(
                                      controller.selectedDay, selectedDay)) {
                                    // Call `setState()` when updating the selected day
                                    setState(() {
                                      controller.selectedDay = selectedDay;
                                      controller.focusedDay = focusedDay;
                                    });
                                  }
                                },
                                onFormatChanged: (format) {
                                  if (controller.calendarFormat != format) {
                                    setState(() {
                                      controller.calendarFormat = format;
                                    });
                                  }
                                },
                                onPageChanged: (focusedDay) {
                                  controller.focusedDay = focusedDay;
                                },
                              ),
                            );
                          })),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

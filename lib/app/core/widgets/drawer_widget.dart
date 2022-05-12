import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_pages.dart';
import '../utils/pallete.dart';
import 'dialog_widget.dart';

drawer(context) {
  var box = GetStorage();

  return Container(
    child: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(top: 32, left: 16),
            decoration: BoxDecoration(
              color: gradient1
            ),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: ScreenUtil().setWidth(50),
                    height: ScreenUtil().setHeight(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/profile.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 4)),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(16),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                       ("${box.read("email").toString()}"),
                        style: boldText.copyWith(
                            fontSize: ScreenUtil().setSp(16),
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(8),
                      ),
                      Text("Member",
                          style: regularText.copyWith(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
          ),
          ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profil Saya"),
                ),
          ListTile(
            onTap: () {
       
            },
            leading: Icon(Icons.help_outline),
            title: Text("Bantuan"),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Syarat & Ketentuan"),
            onTap: () {
             
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: redColor,
            ),
            title: Text("Keluar"),
            onTap: () {
              showDialogConfirm(context, false,
                  "Apakah kamu yakin ingin keluar ?", "Keluar", "Batal", () {
                Get.offNamed(Routes.ENTRY);
              }, () {
                Get.back();
              });
            },
          ),
        
        ],
      ),
    ),
  );
}
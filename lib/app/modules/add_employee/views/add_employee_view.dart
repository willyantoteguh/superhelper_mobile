import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'package:get/get.dart';

import '../../../core/widgets/textfield_widget.dart';
import '../controllers/add_employee_controller.dart';

class AddEmployeeView extends GetView<AddEmployeeController> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Text('ADD EMPLOYEE'),
            centerTitle: true,
          ),
          body: ListView(
            padding: EdgeInsets.all(20),
            children: [
              textFieldWidget('NIP', controller.nipController),
              SizedBox(height: 15,),
              textFieldWidget('NAME', controller.namaController),
              SizedBox(height: 15,),
              textFieldWidget('EMAIL', controller.emailController),
              SizedBox(height: 30,),
              Obx(() => ElevatedButton(child: (controller.isLoading.value) ? Text('Loading....') :  Text('Submit'), onPressed: () => controller.addEmployee(),))
            ],
          )
        );
  }
}

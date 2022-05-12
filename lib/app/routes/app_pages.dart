import 'package:get/get.dart';

import 'package:kehadiranmu/app/modules/add_employee/bindings/add_employee_binding.dart';
import 'package:kehadiranmu/app/modules/add_employee/views/add_employee_view.dart';
import 'package:kehadiranmu/app/modules/entry/bindings/entry_binding.dart';
import 'package:kehadiranmu/app/modules/entry/views/entry_view.dart';
import 'package:kehadiranmu/app/modules/home/bindings/home_binding.dart';
import 'package:kehadiranmu/app/modules/home/views/home_view.dart';
import 'package:kehadiranmu/app/modules/login/bindings/login_binding.dart';
import 'package:kehadiranmu/app/modules/login/views/login_view.dart';
import 'package:kehadiranmu/app/modules/new_password/bindings/new_password_binding.dart';
import 'package:kehadiranmu/app/modules/new_password/views/new_password_view.dart';
import 'package:kehadiranmu/app/modules/register/bindings/register_binding.dart';
import 'package:kehadiranmu/app/modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        transition: Transition.leftToRight),
    GetPage(
      name: _Paths.ADD_EMPLOYEE,
      page: () => AddEmployeeView(),
      binding: AddEmployeeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ENTRY,
      page: () => EntryView(),
      binding: EntryBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_login_test/controller/admob_controller.dart';

import 'package:google_login_test/controller/auth_controller.dart';
import 'package:google_login_test/screens/home.dart';
import 'package:google_login_test/screens/login_page.dart';

class Root extends StatelessWidget {
  Root({Key? key}) : super(key: key);
  AuthController authctrl = Get.put(AuthController());
  AdmobController admobctrl = Get.put(AdmobController());

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        (authctrl.isSignedIn.value || authctrl.isSkipLoginPage.value)
            ? Home()
            : LoginPage());
  }
}

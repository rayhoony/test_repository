import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_login_test/config.dart';
import 'package:google_login_test/screens/root.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_login_test/screens/setup/prefUtil.dart';
import 'firebase_options.dart';
import 'package:google_login_test/navigator_key.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  MobileAds.instance.initialize();
  PrefUtil.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'RussoOne',
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      home: Root(),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.0,
        ),
        child: child!,
      ),
    );
  }
}

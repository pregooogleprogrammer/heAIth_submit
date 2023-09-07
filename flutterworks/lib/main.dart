import 'package:flutter/material.dart';
import 'package:flutterworks/pages/post/home_page.dart';
import 'package:flutterworks/pages/post/write_page.dart';
import 'package:flutterworks/pages/user/join_page.dart';
import 'package:flutterworks/pages/user/login_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // GetX, route not needed
      home: LoginPage(),
    );

  }
}

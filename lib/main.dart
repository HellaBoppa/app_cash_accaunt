import 'package:app_kash_application/app/ui/pages/auch/profil_screen.dart';
import 'package:app_kash_application/app/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/ui/pages/auch/accaunt_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      // home: HomePage(),
      home: const ProfilScreen(),
    );
  }
}

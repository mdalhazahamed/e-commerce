

import 'package:e_commerce/ui/bottom_nav_controller.dart.dart';
import 'package:e_commerce/ui/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Responsive Demo',
            
            theme: ThemeData(
                primarySwatch: Colors.orange,
                textTheme: GoogleFonts.nunitoTextTheme(
                  Theme.of(context).textTheme,
                )),
            home: BottomNavController(),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_insta_ui/screens/ProfileScreen/profile_screen.dart';
import 'package:new_insta_ui/screens/SignUpScreen/signup_screen.dart';
import 'package:new_insta_ui/screens/splash_screen.dart';
import 'screens/LoginScreen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428,926),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white),
        home:   ProfileScreen(),
      ),
    );
  }
}

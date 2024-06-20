import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_insta_ui/screens/LoginScreen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  void _navigateHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              "assets/images/splash_icon.svg",
              height: 80.h,
            ),
            const Spacer(),
            Text(
              "From",
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: "Roboto",
                color: const Color(0xff999999),
              ),
            ),
            Text(
              "facebook",
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: "Ubuntu",
                color: const Color(0xff2e7cf6),
              ),
            ),
            SizedBox(height: 34.h),
          ],
        ),
      ),
    );
  }
}

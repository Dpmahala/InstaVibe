import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_insta_ui/screens/HomeScreen/home_screen.dart';
import 'package:new_insta_ui/screens/SignUpScreen/signup_screen.dart';

import '../../commponent/widgets/input_text_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/INSTAVIBE.svg',
                    height: 28.h,
                  ),
                  SizedBox(height: 22.h),
                  InputTextWidget(
                    controller: _nameController,
                    hintText: "Username",
                    borderColor: const Color(0xff000000).withOpacity(.1),
                    hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                    fillColor: const Color(0xffFAFAFA),
                    focusNode: _usernameFocusNode,
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  InputTextWidget(
                    controller: _passwordController,
                    hintText: "Password",
                    borderColor: const Color(0xff000000).withOpacity(.1),
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: const Color(0xffFAFAFA),
                    focusNode: _passwordFocusNode,
                  ),
                  SizedBox(height: 12.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff3797EF),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.sp),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xff3797EF).withOpacity(.5),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 59.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: const Color(0xff000000).withOpacity(.2),
                      )),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.5.w),
                          child: Text(
                            "OR",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff000000).withOpacity(.4)),
                          )),
                      Expanded(
                          child: Divider(
                        color: const Color(0xff000000).withOpacity(.2),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Log in with Facebook",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Divider(
              color: Colors.black.withOpacity(.2),
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000).withOpacity(.4),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign up.",
                    style: TextStyle(
                      color: const Color(0xff262626),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 52.h,
            ),
          ],
        ),
      ),
    );
  }
}

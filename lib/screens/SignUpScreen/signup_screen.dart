import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../commponent/widgets/input_text_widget.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    _emailController.clear();
    _passwordController.clear();
    _nameController.clear();
    super.initState();
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
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: const Color(0xffFAFAFA),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  InputTextWidget(
                    controller: _emailController,
                    hintText: "Email",
                    borderColor: const Color(0xff000000).withOpacity(.1),
                    hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                    fillColor: const Color(0xffFAFAFA),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  InputTextWidget(
                    controller: _passwordController,
                    hintText: "Password",
                    borderColor: const Color(0xff000000).withOpacity(.1),
                    hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                    fillColor: const Color(0xffFAFAFA),
                  ),
                  SizedBox(height: 18.h),
                  GestureDetector(
                    onTap: () {
                      print("pressed");
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.sp),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xff3797EF).withOpacity(.5),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Sign up",
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
                  "I have an account?",
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign in.",
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

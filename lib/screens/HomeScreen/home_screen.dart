import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_insta_ui/commponent/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<HomeScreen> {
  final List postImage = [
    "https://imgix.bustle.com/uploads/getty/2020/9/9/02eeff30-6dc2-443d-a851-bfea7ae54c37-getty-960906346.jpg?w=374&h=249&fit=crop&crop=faces&q=50&dpr=2",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRITcVh4hpbggg256VYAV8plPPhEoMdQOCSq_7cz6YRd4Q_oocBeTWniWofYkpgXmlJCmY&usqp=CAU0",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRITcVh4hpbggg256VYAV8plPPhEoMdQOCSq_7cz6YRd4Q_oocBeTWniWofYkpgXmlJCmY&usqp=CAU",
    "https://imgix.bustle.com/uploads/getty/2020/9/9/02eeff30-6dc2-443d-a851-bfea7ae54c37-getty-960906346.jpg?w=374&h=249&fit=crop&crop=faces&q=50&dpr=2",
  ];

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFAFAFA),
          leading: Container(
            margin: EdgeInsets.only(left: 20.w),
            child: SvgPicture.asset(
              "assets/images/INSTAVIBE.svg",
            ),
          ),
          leadingWidth: 120.h,
          elevation: 0,
          shape: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
          ),
          actions: [
            SvgPicture.asset("assets/images/add.svg"),
            SizedBox(
              width: 30.w,
            ),
            SvgPicture.asset("assets/images/heart.svg"),
            SizedBox(
              width: 17.w,
            ),
            SvgPicture.asset("assets/images/messanger.svg"),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/Home.svg",
                  ),
                  label: ""),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/search.svg",
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/reel.svg",
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/shop.svg",
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 14.r,
                    backgroundImage: NetworkImage(postImage.first),
                  ),
                  label: "Home")
            ]),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 11.41.w, right: 11.41, top: 12.h),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.82.h,
                  ),
                  SizedBox(
                    width: 8.64.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Turkey, Istanbul",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 12.sp,
                            color: AppColors.textColor),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz,
                    color: AppColors.textColor,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 11.81.h, left: 8.0.w, right: 8.0.w),
              width: double.infinity,
              height: 394.53.h,
              child: Stack(
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: postImage.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 3.w,
                        mainAxisSpacing: 3.h,
                        childAspectRatio: 1.0,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            viewAllPhoto();
                          },
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              fit: BoxFit.cover,
                              postImage[index],
                            ),
                          ),
                        );
                      }),
                  Positioned(
                    right: 0,
                    child: SvgPicture.asset("assets/images/expand.svg"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w, top: 11.h, right: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/heart.svg"),
                      SizedBox(
                        width: 2.w,
                      ),
                      SvgPicture.asset("assets/images/comment.svg"),
                      SizedBox(
                        width: 2.w,
                      ),
                      SvgPicture.asset("assets/images/massage.svg"),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 75.w),
                    child: DotsIndicator(
                      dotsCount: postImage.length,
                      decorator: DotsDecorator(
                        activeColor: const Color(0xff000000).withOpacity(.15),
                        color: const Color(0xff000000).withOpacity(.15),
                        spacing: EdgeInsets.only(right: 4.57.w),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/images/Save.svg"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10.r,
                      ),
                      SizedBox(
                        width: 8.53.w,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Liked by ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontSize: 13.sp),
                            ),
                            TextSpan(
                              text: 'username',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontSize: 13.sp),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontSize: 13.sp),
                            ),
                            TextSpan(
                              text: '44,686',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontSize: 13.sp),
                            ),
                            TextSpan(
                              text: ' others',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontSize: 13.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Username",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 12.sp)),
                        TextSpan(
                            text: "  Some amazing photos from Turkey",
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp))
                      ],
                    ),
                  ),
                  Text(
                    "An hour ago",
                    style: TextStyle(
                        color: Color(0xff000000).withOpacity(.4),
                        fontFamily: "Roboto",
                        fontSize: 10.sp),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  void viewAllPhoto() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                width: double.infinity,
                height: 394.53.h,
                color: Colors.white,
                child: Hero(
                  tag: postImage,
                  child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          _currentIndex = value;
                        });
                      },
                      itemCount: postImage.length,
                      itemBuilder: (context, index) {
                        return Scaffold(
                          body: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 394.53.h,
                                child: Image.network(
                                  postImage[index],
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  margin: EdgeInsets.all(10.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13.r),
                                    color: Color(0xff121212).withOpacity(.7),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5.0.h, horizontal: 8.w),
                                    child: Text(
                                      "${index + 1}"
                                      "/"
                                      "${postImage.length.toString()}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11.sp),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                )),
          );
        });
  }
}

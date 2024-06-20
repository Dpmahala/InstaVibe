import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<String> list = ["264", "1.117", "959"];
  final List<String> name = ["Post", "Follower", "Following"];
  List postName = ["Friends", "Sport", "Design"];
  List postImage = [
    "https://imgs.search.brave.com/uHw0dILJH4ausroRw3U_M318XbJR-jl0Kn2_gGRsUSQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlpEYzJOVGc1/WVdVdFpHWmxaQzAw/WTJWbUxUZ3daakV0/WkRVeE0yUXlOR1Jt/WWpabFhrRXlYa0Zx/Y0dkZVFXRnlibThA/LmpwZw",
    "https://imgs.search.brave.com/6KPJ5LVhYWextiOf32A6OCrCymAUTIIg2OzZJRq1q-Y/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMjE1/MDIzMTY5Ny9waG90/by9mYy1iYXJjZWxv/bmEtdmFsZW5jaWEt/Y2YtbGEtbGlnYS1l/YS1zcG9ydHMtbWF0/Y2gtZGF0ZS0zMy5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/ZVJ6VTQzS1FoRWhY/emVlRnRITmVFNnA4/YlFOSklGSkVfbEdw/NzdHTVQ1ND0",
    "https://imgs.search.brave.com/xKaODSTt-f1HcAhTaAU9O14BZC3Fe9C84B0StyuYXKY/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtcGxhdGZvcm0u/OTlzdGF0aWMuY29t/Ly9vLVdHbFlXa2VG/MEtqdDFJVUVRUnlo/R2hwc1k9LzB4MDo5/NjB4OTYwL2ZpdC1p/bi81MDB4NTAwLzk5/ZGVzaWducy1jb250/ZXN0cy1hdHRhY2ht/ZW50cy8xMTEvMTEx/MTY2L2F0dGFjaG1l/bnRfMTExMTY2NDEx",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
        leading: Container(
            margin: EdgeInsets.only(left: 20.w),
            child: SvgPicture.asset(
              height: 30.h,
              "assets/images/Instagram Logo.svg",
            )),
        leadingWidth: 110.w,
        actions: [
          SvgPicture.asset("assets/images/add.svg"),
          SizedBox(width: 18.w),
          SvgPicture.asset("assets/images/menu.svg"),
          SizedBox(width: 26.w),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4.h),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/images/private.svg",
                  height: 16.75.h,
                ),
                SizedBox(width: 7.w),
                Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 25.h,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 17.w),
            child: Row(
              children: [
                Container(
                  width: 104.83.w,
                  height: 104.83.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      stops: [0.0, 0.5, 1.0],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xffFBAA47),
                        Color(0xffD91A46),
                        Color(0xffA60F93),
                      ],
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(2.h),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.46.r),
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: ClipOval(
                        child: Image.network(
                          "https://imgs.search.brave.com/mZnzRrGjrousWdaLWYjCqovMQmBsXRRXVYpa4-U9Xs4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9idWZm/ZXIuY29tL2xpYnJh/cnkvY29udGVudC9p/bWFnZXMvMjAyMi8w/My9zaWdtdW5kLU1R/MnhZQkhJbUtNLXVu/c3BsYXNoLS0xLS0x/LmpwZw",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 39.31.w),
                Row(
                  children: List.generate(3, (index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 39.23.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            list[index],
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Roboto",
                            ),
                          ),
                          Text(
                            name[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 22.46.w, top: 13.1.h, bottom: 7.56.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name Username",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    fontFamily: "Roboto",
                  ),
                ),
                Text(
                  "Biography",
                  style: TextStyle(fontSize: 12.sp, fontFamily: "Roboto"),
                ),
                Text(
                  "Website etc..",
                  style: TextStyle(fontSize: 12.sp, fontFamily: "Roboto"),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 23.w),
            width: double.infinity,
            padding: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: const Offset(0, 4), // horizontal and vertical offset
                  blurRadius: 10, // blur radius
                  spreadRadius: 1, // spread radius
                ),
              ],
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey),
            ),
            child: Text(
              "Edit Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xff000000).withOpacity(.4),
                fontSize: 13.sp,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(left: 20.28.w, top: 27.95.h, right: 30.w),
              height: MediaQuery.of(context).size.height * .15,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 69.89.w,
                        height: 69.89.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xff000000).withOpacity(.4),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 30.66.h,
                        ),
                      ),
                      Text(
                        "New",
                        style: TextStyle(fontSize: 12.sp, fontFamily: "Roboto"),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 2,
                    // height: MediaQuery.of(context).size.height*
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: postName.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            SizedBox(width: 19.66.w), // Add some spacing
                            Column(
                              children: [
                                Container(
                                  width: 69.89.w,
                                  height: 69.89.h,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        offset: const Offset(0,
                                            4), // horizontal and vertical offset
                                        blurRadius: 10, // blur radius
                                        spreadRadius: 1, // spread radius
                                      ),
                                    ],
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xff000000)
                                          .withOpacity(.4),
                                    ),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(2.5.h),
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle),
                                    child: Container(
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.network(
                                          postImage[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  postName[index],
                                  style: TextStyle(
                                      fontSize: 12.sp, fontFamily: "Roboto"),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 19.05.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/images/Grid Icon.svg", color: Colors.black,),
                SvgPicture.asset("assets/images/Grid Icon.svg", color: Colors.black,),
                SvgPicture.asset("assets/images/Grid Icon.svg", color: Colors.black,),
                SvgPicture.asset("assets/images/Grid Icon.svg", color: Colors.black,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

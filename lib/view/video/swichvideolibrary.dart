import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';

class swishvideo extends StatelessWidget {
  const swishvideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Swish Video Library",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffEE7A1D)),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.push('/home/child/VideoLibraryView');
                    },
                    child: SizedBox(
                      width: 167.w,
                      height: 128.h,
                      child: GreyBG(
                          child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Image.asset("assets/images/1.png"),
                            5.verticalSpace,
                            Text(
                              "Dribbling",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffEE7A1D)),
                            )
                          ],
                        ),
                      )),
                    ),
                  ),
                  20.horizontalSpace,
                  SizedBox(
                    width: 167.w,
                    height: 128.h,
                    child: GreyBG(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Image.asset("assets/images/shooting.png"),
                          5.verticalSpace,
                          Text(
                            "Shooting",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffEE7A1D)),
                          )
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
            24.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 167.w,
                    height: 128.h,
                    child: GreyBG(
                        child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset("assets/images/single.png"),
                          5.verticalSpace,
                          Text(
                            "Passing",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffEE7A1D)),
                          )
                        ],
                      ),
                    )),
                  ),
                  20.horizontalSpace,
                  SizedBox(
                    width: 167.w,
                    height: 128.h,
                    child: GreyBG(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Image.asset("assets/images/rebounding.png"),
                          5.verticalSpace,
                          Text(
                            "Rebounding",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffEE7A1D)),
                          )
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
            24.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 167.w,
                    height: 128.h,
                    child: GreyBG(
                        child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset("assets/images/defense.png"),
                          5.verticalSpace,
                          Text(
                            "Defense",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffEE7A1D)),
                          )
                        ],
                      ),
                    )),
                  ),
                  20.horizontalSpace,
                  SizedBox(
                    width: 167.w,
                    height: 128.h,
                    child: GreyBG(
                        child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset("assets/images/speed.png"),
                          5.verticalSpace,
                          Text(
                            "Speed / Agility",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffEE7A1D)),
                          )
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 353.w,
              height: 128.h,
              child: GreyBG(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Image.asset("assets/images/mental.png"),
                      10.verticalSpace,
                      Text(
                        "Mental Strenght",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffEE7A1D)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

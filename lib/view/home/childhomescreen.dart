import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ChildHomeScreen extends StatelessWidget {
  const ChildHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/childph.png',
            width: 40.w,
          ),
        ),
        title: Text(
          "Hi Mike!",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              context.push('/home/child/noitification');
            },
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Icon(LucideIcons.bellRing, color: Color(0xffEE7A1D)),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            22.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/shooting');
              },
              child: Container(
                width: 353.w,
                decoration: BoxDecoration(
                    color: const Color(0xff3F1004),
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: Padding(
                  padding: EdgeInsets.all(14.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start Shooting",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/images/basketball.png',
                        height: 40.h,
                        width: 40.w,
                      )
                    ],
                  ),
                ),
              ),
            ),
            22.verticalSpace,
            SizedBox(
              width: 353.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 93.w,
                    height: 86.h,
                    child: GreyBG(
                        child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "431",
                            style: TextStyle(
                                color: const Color(0xff649E24),
                                fontSize: 27.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          7.verticalSpace,
                          Text(
                            "Total Shots",
                            style: TextStyle(
                                color: const Color(0xff273251),
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 145.w,
                    height: 86.h,
                    child: GreyBG(
                        child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "54.2h",
                            style: TextStyle(
                                color: const Color(0xff5484FF),
                                fontSize: 27.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          7.verticalSpace,
                          Text(
                            "Total Workout Time",
                            style: TextStyle(
                                color: const Color(0xff273251),
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 93.w,
                    height: 86.h,
                    child: GreyBG(
                        child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "82%",
                            style: TextStyle(
                                color: const Color(0xffEE7A1D),
                                fontSize: 27.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          7.verticalSpace,
                          Text(
                            "Free Throw",
                            style: TextStyle(
                                color: const Color(0xff273251),
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
            22.verticalSpace,
            SizedBox(
              width: 353.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 167.w,
                    height: 99.h,
                    child: GreyBG(
                        child: Center(
                      child: Image.asset(
                        'assets/images/childcirclegraph.png',
                        width: 79.w,
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 167.w,
                    height: 99.h,
                    child: GreyBG(
                        child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              LucideIcons.bookDown,
                              color: const Color(0xffEE7A1D),
                              size: 23.h,
                            ),
                            14.horizontalSpace,
                            Text(
                              'Download\nBuilt-in-Guide',
                              style: TextStyle(
                                  color: const Color(0xffEE7A1D),
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    )),
                  ),
                ],
              ),
            ),
            22.verticalSpace,
            SizedBox(
              width: 353.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 167.w,
                    height: 177.h,
                    child: GreyBG(
                        child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/activity.png',
                            width: 79.w,
                          ),
                          14.verticalSpace,
                          Text(
                            "Activity",
                            style: TextStyle(
                                color: const Color(0xff5F677E),
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 167.w,
                    height: 177.h,
                    child: GreyBG(
                        child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/shootingstats.png',
                            width: 79.w,
                          ),
                          14.verticalSpace,
                          Text(
                            "Shooting Stats",
                            style: TextStyle(
                                color: const Color(0xff5F677E),
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
            22.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/setmygoals');
              },
              child: Container(
                width: 355.w,
                decoration: BoxDecoration(
                    color: const Color(0xffEE7A1D),
                    borderRadius: BorderRadius.all(Radius.circular(12.r))),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(14.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          LucideIcons.locateFixed,
                          color: Colors.white,
                        ),
                        12.horizontalSpace,
                        Text(
                          "Set My Goals",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
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

class GreyBG extends StatelessWidget {
  final child;
  const GreyBG({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color(0xffB4B8C3), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFAFAFA),
              Color(0xFFD2D2D2),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}

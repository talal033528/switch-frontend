import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';

class kidshomescreen extends StatefulWidget {
  const kidshomescreen({super.key});

  @override
  State<kidshomescreen> createState() => _kidshomescreenState();
}

int touchedIndex = 1;
bool _switchValue = false;

class _kidshomescreenState extends State<kidshomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffEE7A1D),
        leading: Image.asset("assets/images/hidave.png"),
        title: Text(
          "Hi Dave",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: const Color(0xffFFFFFF)),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  context.push('/home/child/noitification');
                },
                child: Icon(LucideIcons.bellRing, color: Color(0xffFFFFFF))),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              19.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/shooting');
                },
                child: SizedBox(
                  height: 105.h,
                  width: 350.w,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff000000),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        height: 69.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Start Shooting",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22.sp,
                                  color: const Color(0xffFFFFFF)),
                            ),
                            35.horizontalSpace,
                            Icon(
                              LucideIcons.arrowRightCircle,
                              size: 26.w,
                              color: const Color(0xffEE7A1D),
                            ),
                            21.horizontalSpace,
                          ],
                        ),
                      ),
                      Positioned(
                          left: 15,
                          top: 20,
                          child: Image.asset("assets/images/basketball.png")),
                    ],
                  ),
                ),
              ),
              // Container(
              //   width: 350.w,
              //   decoration: BoxDecoration(
              //       color: const Color(0xff8E2B00),
              //       borderRadius: BorderRadius.all(Radius.circular(10.r))),
              //   child: Row(
              //     children: [
              //       Image.asset("assets/images/basketball.png"),
              //       30.horizontalSpace,
              //       Text(
              //         "Start Shooting",
              //         style: TextStyle(
              //             fontWeight: FontWeight.w700,
              //             fontSize: 22.sp,
              //             color: Color(0xffFFFFFF)),
              //       ),
              //       70.horizontalSpace,
              //       Icon(
              //         LucideIcons.arrowRightCircle,
              //         size: 26.w,
              //         color: Color(0xffEE7A1D),
              //       )
              //     ],
              //   ),
              // ),

              GestureDetector(
                onTap: () {
                  context.push('/home/child/shotsatempt');
                },
                child: SizedBox(
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
                                "208",
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
                      GestureDetector(
                        onTap: () {
                          context.push('/home/child/workoutscreen');
                        },
                        child: SizedBox(
                          width: 145.w,
                          height: 86.h,
                          child: GreyBG(
                              child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "28.7h",
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
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push('/home/child/freethrow');
                        },
                        child: SizedBox(
                          width: 93.w,
                          height: 86.h,
                          child: GreyBG(
                              child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "13%",
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
                      ),
                    ],
                  ),
                ),
              ),
              25.verticalSpace,
              Container(
                // height: 293.h,
                width: 350.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: const Color(0xffECEDEF),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: Column(
                    children: [
                      10.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Day",
                            style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontSize: 14.sp),
                          ),
                          Text(
                            "Week",
                            style: TextStyle(
                                color: const Color(0xffEE7A1D),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Month",
                            style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontSize: 14.sp),
                          ),
                          Text(
                            "Year",
                            style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontSize: 14.sp),
                          ),
                          FlutterSwitch(
                            height: 35.h,
                            width: 114.w,
                            padding: 4.0,
                            toggleSize: 20.0,
                            borderRadius: 100.0,
                            value: _switchValue,
                            activeText: "Shot Chart",
                            activeTextFontWeight: FontWeight.normal,
                            inactiveText: "Bar Graph",
                            inactiveTextFontWeight: FontWeight.normal,
                            valueFontSize: 14.sp,
                            showOnOff: true,
                            activeTextColor: const Color(0xffEE7A1D),
                            inactiveTextColor: const Color(0xff5F677E),
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            toggleColor: const Color(0xffEE7A1D),
                            inactiveToggleColor: const Color(0xff5F677E),
                            switchBorder: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                            onToggle: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Image.asset(_switchValue
                          ? "assets/images/homecoat.png"
                          : "assets/images/week2.png"),
                      SizedBox(
                          width: 363.w,
                          child: const Divider(
                            thickness: 1,
                            color: Color(0xffECEDEF),
                          )),
                      15.verticalSpace,
                      // Image.asset(
                      //   "assets/images/homecoat.png",
                      //   // width: 350.w,
                      //   // height: 350.h,
                      // )
                    ],
                  ),
                ),
              ),

              10.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/kidactivityanalytics');
                },
                child: Container(
                  width: 353.w,
                  height: 148.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF000000), // Black background color
                    border: Border.all(
                      color: const Color(0xFFECEDEF),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 113.w,
                            height: 113.h,
                            child: Image.asset("assets/images/activity2.png")),
                        24.horizontalSpace,
                        SizedBox(
                          width: 167.w,
                          height: 27.h,
                          child: Text(
                            "Activity Analytics",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffFFFFFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              22.verticalSpace,

              GestureDetector(
                onTap: () {
                  context.push('/home/child/createyourgoals');
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
                        mainAxisAlignment: MainAxisAlignment.start,
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
              ),
              // GestureDetector(
              //   onTap: () {
              //     context.push('/home/child/kidactivityanalytics');
              //   },
              //   child: SizedBox(
              //     width: 350.w,
              //     height: 141.h,
              //     child:
              //         //  Image.asset("assets/images/65.png")

              //         GreyBG(
              //       child: Padding(
              //         padding: const EdgeInsets.all(15),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             40.horizontalSpace,
              //             Align(
              //               alignment: Alignment.center,
              //               child: Text(
              //                 "Free Throw",
              //                 style: TextStyle(
              //                     fontSize: 18.sp,
              //                     fontWeight: FontWeight.w400,
              //                     color: const Color(0xff5F677E)),
              //               ),
              //             ),
              //             Image.asset("assets/images/64.png"),
              //             // Container(
              //             //   width: 112.w,
              //             //   height: 112.h,
              //             //   decoration: BoxDecoration(
              //             //     border: Border.all(
              //             //         width: 5, color: const Color(0xff8FE133)),
              //             //     shape: BoxShape.circle,
              //             //   ),
              //             //   child: Center(
              //             //       child: Text(
              //             //     "64%",
              //             //     style: TextStyle(
              //             //         fontSize: 27.sp,
              //             //         fontWeight: FontWeight.w400,
              //             //         color: const Color(0xff5F677E)),
              //             //   )),
              //             // )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              22.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/downloadscreen');
                },
                child: SizedBox(
                  width: 360.w,
                  height: 65.h,
                  child: GreyBG(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            LucideIcons.bookDown,
                            size: 18.h,
                            color: const Color(0xffEE7A1D),
                          ),
                          10.horizontalSpace,
                          Text(
                            "Download Built-in-Guide",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18.sp,
                                color: const Color(0xffEE7A1D)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     context.push('/home/child/swishvideo');
              //   },
              //   child: SizedBox(
              //     width: 353.w,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         SizedBox(
              //           width: 167.w,
              //           height: 155.h,
              //           child: Card(
              //             elevation: 2,
              //             shape: RoundedRectangleBorder(
              //               side: const BorderSide(
              //                   color: Color(0xffB4B8C3), width: 2),
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //             child: Container(
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 gradient: LinearGradient(
              //                   begin: Alignment(0.00, -1.00),
              //                   end: Alignment(0, 1),
              //                   colors: [
              //                     Color(0x75F9F9F9),
              //                     Color(0xAAD2D2D2),
              //                     Colors.white.withOpacity(0)
              //                   ],
              //                 ),
              //               ),
              //               child: Center(
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.center,
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Image.asset(
              //                       "assets/images/swish3.png",
              //                       width: 90,
              //                       height: 95,
              //                       fit: BoxFit.cover,
              //                     ),
              //                     5.verticalSpace,
              //                     Text(
              //                       "SWISH Video Library",
              //                       style: TextStyle(
              //                           color: const Color(0xff5F677E),
              //                           fontSize: 14.sp,
              //                           fontWeight: FontWeight.w300),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         GestureDetector(
              //           onTap: () {
              //             context.push('/home/child/ScoreAnalytics');
              //           },
              //           child: SizedBox(
              //             width: 167.w,
              //             height: 155.h,
              //             child: Card(
              //               elevation: 2,
              //               shape: RoundedRectangleBorder(
              //                 side: const BorderSide(
              //                     color: Color(0xffB4B8C3), width: 2),
              //                 borderRadius: BorderRadius.circular(10),
              //               ),
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(10),
              //                   gradient: LinearGradient(
              //                     begin: Alignment(0.00, -1.00),
              //                     end: Alignment(0, 1),
              //                     colors: [
              //                       Color(0x75F9F9F9),
              //                       Color(0xAAD2D2D2),
              //                       Colors.white.withOpacity(0)
              //                     ],
              //                   ),
              //                 ),
              //                 child: Center(
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset(
              //                         "assets/images/swish2.png",
              //                         width: 90,
              //                         height: 95,
              //                         fit: BoxFit.cover,
              //                       ),
              //                       5.verticalSpace,
              //                       Text(
              //                         "Shooting Stats",
              //                         style: TextStyle(
              //                             color: const Color(0xff5F677E),
              //                             fontSize: 14.sp,
              //                             fontWeight: FontWeight.w300),
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              50.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

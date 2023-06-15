import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/userph.png',
            width: 40.w,
          ),
        ),
        title: Text(
          "Home",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(13.0),
            child: GestureDetector(
                onTap: () {
                  context.push('/home/child/NoitifcationScreen');
                },
                child: Icon(LucideIcons.bellRing, color: Color(0xffEE7A1D))),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            18.verticalSpace,
            SizedBox(
              width: 353.w,
              child: Text(
                'Hi Steven,',
                style:
                    TextStyle(color: const Color(0xff5F677E), fontSize: 22.sp),
              ),
            ),
            20.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/childhomescreen');
              },
              child: SizedBox(
                width: 353.w,
                height: 60.h,
                child: Card(
                  color: const Color(0xffEE7A1D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/childph.png',
                        width: 40.w,
                        height: 40.h,
                      ),
                      title: const Text(
                        'Mike Ottrando',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            10.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/kidshomescreen');
              },
              child: SizedBox(
                width: 353.w,
                height: 60.h,
                child: Card(
                  color: const Color(0xffEE7A1D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/dave.png',
                        width: 40.w,
                        height: 40.h,
                      ),
                      title: const Text(
                        "Dave Ottrando                     (Kid account)    ",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            7.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/inviteuser');
              },
              child: SizedBox(
                width: 353.w,
                height: 60.h,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xffFFBDB5), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFFFFFF),
                          Color(0xFFD7D7D7),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.add,
                        color: const Color(0xffEE7A1D),
                        size: 30.w,
                      ),
                      title: Text("Invite User",
                          style: TextStyle(
                              color: const Color(0xffEE7A1D), fontSize: 18.sp)),
                    ),
                  ),
                ),
              ),
            ),
            7.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/paymentmethod');
              },
              child: SizedBox(
                width: 353.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 167.w,
                      height: 113.h,
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xffFFBDB5), width: 2),
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
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  LucideIcons.creditCard,
                                  color: const Color(0xffEE7A1D),
                                  size: 30.h,
                                ),
                                10.verticalSpace,
                                Text(
                                  "Billing",
                                  style: TextStyle(
                                      color: const Color(0xffEE7A1D),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push('/home/child/mikeottrando');
                      },
                      child: SizedBox(
                        width: 167.w,
                        height: 113.h,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xffFFBDB5), width: 2),
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
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    LucideIcons.barChart,
                                    color: const Color(0xffEE7A1D),
                                    size: 30.h,
                                  ),
                                  10.verticalSpace,
                                  Text(
                                    "Analytics",
                                    style: TextStyle(
                                        color: const Color(0xffEE7A1D),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            34.verticalSpace,
            SizedBox(
              width: 353.w,
              child: Text(
                'Upgrade to Enterprise Accounts',
                style:
                    TextStyle(color: const Color(0xff5F677E), fontSize: 14.sp),
              ),
            ),
            13.verticalSpace,
            SizedBox(
              width: 353.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 167.w,
                    height: 113.h,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color(0xffFFBDB5), width: 2),
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
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                LucideIcons.dribbble,
                                color: const Color(0xffEE7A1D),
                                size: 30.h,
                              ),
                              10.verticalSpace,
                              Column(
                                children: [
                                  Text(
                                    "Coaches Platform",
                                    style: TextStyle(
                                        color: const Color(0xffEE7A1D),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  3.verticalSpace,
                                  Text("Coming Soon",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.sp,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 167.w,
                    height: 113.h,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color(0xffFFBDB5), width: 2),
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
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                LucideIcons.youtube,
                                color: const Color(0xffEE7A1D),
                                size: 30.h,
                              ),
                              10.verticalSpace,
                              Column(
                                children: [
                                  Text(
                                    "SWISH VIDEO",
                                    style: TextStyle(
                                        color: const Color(0xffEE7A1D),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  3.verticalSpace,
                                  Text(
                                    "LIBRARY",
                                    style: TextStyle(
                                        color: const Color(0xffEE7A1D),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

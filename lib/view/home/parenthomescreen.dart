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
          child: GestureDetector(
            onTap: () {
              context.push('/home/child/EDITPROFILE');
            },
            child: Image.asset(
              'assets/images/userph.png',
              width: 40.w,
            ),
          ),
        ),
        title: Text(
          "Home",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: GestureDetector(
                onTap: () {
                  context.push('/home/child/NoitifcationScreen');
                },
                child:
                    const Icon(LucideIcons.bellRing, color: Color(0xffEE7A1D))),
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
                context.goNamed('home', pathParameters: {"type": "child"});
              },
              child: SizedBox(
                width: 353.w,
                height: 67.h,
                child: Center(
                  child: Card(
                    color: const Color(0xffEE7A1D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
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
                context.goNamed('home', pathParameters: {"type": "kid"});
              },
              child: SizedBox(
                width: 353.w,
                height: 67.h,
                child: Card(
                  color: const Color(0xffEE7A1D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/dave.png',
                        width: 40.w,
                        height: 40.h,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Dave Ottrando",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "(Kid account)",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
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
                context.push('/home/child/kidsregisterscreen');
              },
              child: SizedBox(
                width: 353.w,
                height: 60.h,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xffFFBDB5), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [
                          Color(0x75F9F9F9),
                          Color(0xAAD2D2D2),
                          Colors.white.withOpacity(0.5)
                        ],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 70.w,
                          child: Icon(
                            Icons.add,
                            color: const Color(0xffEE7A1D),
                            size: 30.w,
                          ),
                        ),
                        SizedBox(
                          width: 200.w,
                          child: Text("Invite Your Child",
                              style: TextStyle(
                                  color: const Color(0xffEE7A1D),
                                  fontSize: 18.sp)),
                        ),
                      ],
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
                              color: Color(0xffFFBDB5), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [
                                Color(0x75F9F9F9),
                                Color(0xAAD2D2D2),
                                Colors.white.withOpacity(0.5)
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
                                color: Color(0xffFFBDB5), width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Color(0x75F9F9F9),
                                  Color(0xAAD2D2D2),
                                  Colors.white.withOpacity(0.5)
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
                            color: Color(0xffB4B8C3), width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Color(0x75F9F9F9),
                              Color(0xAAD2D2D2),
                              Colors.white.withOpacity(0.5)
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
                  GestureDetector(
                    onTap: () {
                      // context.push('/home/child/swishvideo');
                    },
                    child: SizedBox(
                      width: 167.w,
                      height: 113.h,
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xffB4B8C3), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Color(0x3F316AFF),
                            //     blurRadius: 3,
                            //     offset: Offset(0, 0),
                            //     spreadRadius: 0,
                            //   )
                            // ],
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [
                                Color(0x75F9F9F9),
                                Color(0xAAD2D2D2),
                                Colors.white.withOpacity(0.5)
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

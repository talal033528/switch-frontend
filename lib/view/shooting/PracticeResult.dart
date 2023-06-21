import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';
import 'package:swish_basketball/widgets/button.dart';

class PracticeResult extends StatelessWidget {
  const PracticeResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Practice > Result",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            28.verticalSpace,
            SizedBox(
              width: 353.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 156.w,
                    height: 106.h,
                    child: GreyBG(
                        child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Shot %",
                            style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "39%",
                            style: TextStyle(
                                color: const Color(0xffEE7A1D),
                                fontSize: 53.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          7.verticalSpace,
                        ],
                      ),
                    )),
                  ),
                  Center(
                    child: SizedBox(
                      width: 190.w,
                      height: 106.h,
                      child: GreyBG(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            title: Text(
                              "Free",
                              style: TextStyle(
                                  color: const Color(0xff7C8396),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              "Throws",
                              style: TextStyle(
                                  color: const Color(0xff7C8396),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            trailing: GestureDetector(
                              onTap: () {
                                context.push('/home/shooting/activityanalytic');
                              },
                              child: Image.asset(
                                "assets/images/77.png",
                                width: 85.w,
                                height: 85.h,
                                fit: BoxFit.contain,
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
            25.verticalSpace,
            SizedBox(
              width: 353.w,
              height: 368.h,
              child: GreyBG(
                  child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Workout Time: 01:38:37",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xff7C8396),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    5.verticalSpace,
                    Text(
                      "Shot Made ",
                      style: TextStyle(
                          color: const Color(0xff273251),
                          fontSize: 27.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    10.verticalSpace,
                    Container(
                      width: 98.w,
                      height: 98.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2, color: const Color(0xff57891F))),
                      child: Center(
                        child: Text(
                          "43",
                          style: TextStyle(
                              fontSize: 43.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff57891F)),
                        ),
                      ),
                    ),
                    5.verticalSpace,
                    Text(
                      "Congratulation!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xff273251),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    5.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Out of total ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color(0xff7C8396),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "57",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color(0xffFF4A31),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "shots",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color(0xff7C8396),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    28.verticalSpace,
                    GestureDetector(
                      onTap: () {
                        context.push('/home/shooting/shotschart');
                      },
                      child: SizedBox(
                        width: 274.w,
                        child: const GlobalButton(
                          text: 'View My Shot Charts',
                          color: Color(0xff5F677E),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            16.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/shooting/CriteriaSelectionScreen');
              },
              child: SizedBox(
                width: 351.w,
                child: const GlobalButton(
                  text: 'Shoot again!',
                  color: Color(0xffEE7A1D),
                ),
              ),
            ),
            10.verticalSpace,
            GestureDetector(
              onTap: () {
                context.goNamed('home', pathParameters: {"type": "kid"});

                // context.push('/home/shooting/ChildHomeScreen');
              },
              child: SizedBox(
                width: 351.w,
                child: const GlobalButton(
                  text: 'Return to Dashboard',
                  color: Color(0xff040A1C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

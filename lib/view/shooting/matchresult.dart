import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';
import 'package:swish_basketball/widgets/button.dart';

class MatchResultScreen extends StatelessWidget {
  const MatchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/userph.png',
            width: 40.w,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffEE7A1D),
        centerTitle: false,
        title: Text(
          "Match > Result",
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            28.verticalSpace,
            SizedBox(
              width: 351.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 167.w,
                    height: 108.h,
                    child: GreyBG(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Buckets",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xff7C8396),
                              fontSize: 14.sp,
                            ),
                          ),
                          3.verticalSpace,
                          Text(
                            "06",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xff649E24),
                              fontSize: 43.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 167.w,
                    height: 108.h,
                    child: GreyBG(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Drops",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xff7C8396),
                              fontSize: 14.sp,
                            ),
                          ),
                          3.verticalSpace,
                          Text(
                            "17",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xffFF549A),
                              fontSize: 43.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            17.verticalSpace,
            SizedBox(
              width: 353.w,
              height: 305.h,
              child: GreyBG(
                  child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "9",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xff649E24),
                        fontSize: 67.sp,
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                      "Congratulation!",
                      style: TextStyle(
                          color: const Color(0xff5F677E),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    10.verticalSpace,
                    Text(
                      "You have score 54 points.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xff7C8396),
                        fontSize: 14.sp,
                      ),
                    ),
                    28.verticalSpace,
                    SizedBox(
                      width: 308.w,
                      child: const GlobalButton(
                        text: 'Set Reminder',
                        color: Color(0xff5F677E),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            37.verticalSpace,
            SizedBox(
              width: 308.w,
              child: const GlobalButton(
                text: 'Next Match',
                color: Color(0xffEE7A1D),
              ),
            ),
            21.verticalSpace,
            GestureDetector(
              onTap: () {
                context.pop();
                context.pop();
                context.pop();
                context.pop();
              },
              child: SizedBox(
                width: 308.w,
                child: const GlobalButton(
                  text: 'Return to Dashboard',
                  color: Color(0xff5F677E),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

class inviteruser extends StatelessWidget {
  const inviteruser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            LucideIcons.arrowLeft,
            color: Color(0xffEE7A1D),
          ),
        ),
        title: Text(
          "Invite User",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xffEE7A1D)),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: 350.w,
              child: Text(
                "Connected Accounts",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff5F677E)),
              ),
            ),
            20.verticalSpace,
            Container(
              width: 360,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFEE7A1D),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/wats.png",
                      width: 32.w,
                      height: 32.h,
                      fit: BoxFit.contain,
                    ),
                    10.horizontalSpace,
                    Text(
                      "WhatsApp",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    160.horizontalSpace,
                    Text(
                      "CONNECTED",
                      style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            30.verticalSpace,
            SizedBox(
              width: 358.w,
              child: Divider(
                thickness: 2,
                color: Color(0xffDFE1E6),
              ),
            ),
            28.verticalSpace,
            SizedBox(
              width: 350.w,
              child: Text(
                "Connect your Social Accounts",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff5F677E)),
              ),
            ),
            21.verticalSpace,
            Container(
              width: 360,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFB),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/facebook.png",
                      width: 32.w,
                      height: 32.h,
                      fit: BoxFit.contain,
                    ),
                    10.horizontalSpace,
                    Text("Facebook accountp",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5F677E),
                        )),
                  ],
                ),
              ),
            ),
            10.verticalSpace,
            Container(
              width: 360,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFB),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/msg.png",
                      width: 32.w,
                      height: 32.h,
                      fit: BoxFit.contain,
                    ),
                    10.horizontalSpace,
                    Text("Messenger account",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5F677E),
                        )),
                  ],
                ),
              ),
            ),
            10.verticalSpace,
            Container(
              width: 360,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFB),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/twit.png",
                      width: 32.w,
                      height: 32.h,
                      fit: BoxFit.contain,
                    ),
                    10.horizontalSpace,
                    Text("Twitter account",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5F677E),
                        )),
                  ],
                ),
              ),
            ),
            10.verticalSpace,
            Container(
              width: 360,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFB),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/link.png",
                      width: 32.w,
                      height: 32.h,
                      fit: BoxFit.contain,
                    ),
                    10.horizontalSpace,
                    Text("Create Sharable Link",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5F677E),
                        )),
                  ],
                ),
              ),
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';
import 'package:swish_basketball/widgets/button.dart';

class ShooingScreen extends StatelessWidget {
  const ShooingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(LucideIcons.arrowLeft, color: Color(0xffFFFFFF))),
        elevation: 0,
        backgroundColor: const Color(0xffEE7A1D),
        centerTitle: true,
        title: Text(
          "SWISH - Smart Hoops, Smart Result",
          style: TextStyle(color: const Color(0xffFFFFFF), fontSize: 14.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            20.verticalSpace,
            Text("Shooting Instructions",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color(0xffEE7A1D),
                  fontWeight: FontWeight.bold,
                )),
            20.verticalSpace,
            SizedBox(
              width: 353.w,
              child: Text(
                  "Just click a spot on the court and start shooting, just click a new spot on the court!\n\nUse our cutting edge technology to log your shots using nothing but your voice.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff5F677E),
                  )),
            ),
            25.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/shooting/CriteriaSelectionScreen');
              },
              child: SizedBox(
                width: 352.w,
                child: const GlobalButton(
                  text: 'Start Shooting',
                  color: Color(0xff5F677E),
                ),
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
                      "Want to perfect\nyour skills?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xff649E24),
                        fontSize: 22.sp,
                      ),
                    ),
                    28.verticalSpace,
                    Text(
                      "Set goals for your upcoming workout! ",
                      style: TextStyle(
                        color: const Color(0xff5F677E),
                        fontSize: 14.sp,
                      ),
                    ),
                    17.verticalSpace,
                    Text(
                      "Set goals for time, shots attempted, or\nshots made.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xff5F677E),
                        fontSize: 14.sp,
                      ),
                    ),
                    28.verticalSpace,
                    Text(
                      "Ready to Roll?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xffEE7A1D),
                        fontSize: 18.sp,
                      ),
                    ),
                    28.verticalSpace,
                    SizedBox(
                      width: 308.w,
                      child: const GlobalButton(
                        text: 'Set your Goals!',
                        color: Color(0xffEE7A1D),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/button.dart';

class congratulationscreen extends StatelessWidget {
  const congratulationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
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
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/55.png",
                width: 300.w,
                height: 300.h,
                fit: BoxFit.contain,
              ),
            ),
            36.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/ChildHomeScreen');
              },
              child: SizedBox(
                width: 331.w,
                child: GlobalButton(
                    text: "Back to Home", color: Color(0xffEE7A1D)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

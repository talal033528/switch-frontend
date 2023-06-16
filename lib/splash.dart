import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/widgets/button.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Group-7.png',
              width: 226.w,
            ),
            220.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/register');
              },
              child: SizedBox(
                  width: 332.w,
                  child: const GlobalButton(
                      text: "Hoop Smarter!", color: Color(0xffEE7A1D))),
            ),
          ],
        ),
      ),
    );
  }
}

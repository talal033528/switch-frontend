import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/button.dart';

class Resetpasword extends StatefulWidget {
  const Resetpasword({super.key});

  @override
  State<Resetpasword> createState() => _EDITPROFILEState();
}

class _EDITPROFILEState extends State<Resetpasword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const AuthTextField(
              hinttext: 'stevenottrando@gmail.com',
              headertext: 'E-mail Address',
              obsecure: false,
              showsuffixicon: false,
              suffixicon: SizedBox(),
            ),
            21.verticalSpace,
            GestureDetector(
              onTap: () {
                context.go('/login');
              },
              child: SizedBox(
                  width: 333.w,
                  child: const GlobalButton(
                    color: Color(0xffEE7A1D),
                    text: 'CONTINUE',
                  )),
            ),
            30.verticalSpace,
          ],
        ),
      ),
    );
  }
}

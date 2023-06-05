import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final int _selectedIndex = 0;
  final TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              90.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: const Color(0xffEE7A1D), fontSize: 27.sp),
                ),
              ),
              5.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Not Registered? ",
                        style: TextStyle(
                            color: const Color(0xff7C8396), fontSize: 14.sp)),
                    GestureDetector(
                      onTap: () {
                        context.go('/register');
                      },
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                            color: const Color(0xffEE7A1D),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                  width: 333.w,
                  child: Column(
                    children: [
                      44.verticalSpace,
                      AuthTextField(
                        controller: emailController,
                        hinttext: 'Type Full Name',
                        headertext: 'E-mail Address',
                        obsecure: false,
                        showsuffixicon: false,
                        suffixicon: const SizedBox(),
                      ),
                      25.verticalSpace,
                      const AuthTextField(
                        hinttext: '*************',
                        headertext: 'Password',
                        obsecure: true,
                        showsuffixicon: false,
                        suffixicon: SizedBox(),
                      ),
                    ],
                  )),
              21.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_circle_outline,
                      color: Color(0xffEE7A1D),
                    ),
                    5.horizontalSpace,
                    Text(
                      'Remember',
                      style: TextStyle(
                          color: const Color(0xff5F677E), fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              21.verticalSpace,
              GestureDetector(
                onTap: () {
                  if (emailController.text == "parent") {
                    context.goNamed('home', pathParameters: {"type": "parent"});
                  } else {
                    context.goNamed('home', pathParameters: {"type": "child"});
                  }
                },
                child: SizedBox(
                    width: 333.w,
                    child: const GlobalButton(
                      color: Color(0xffEE7A1D),
                      text: 'Login',
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

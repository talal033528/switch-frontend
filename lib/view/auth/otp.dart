import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swish_basketball/widgets/button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final bool _switchValue = true;
  @override
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              64.verticalSpace,
              SizedBox(
                width: 333.w,
                child: GestureDetector(
                  onTap: () {
                    context.pop('register/payment');
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff5F677E),
                    ),
                  ),
                ),
              ),
              30.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Verify your phone number",
                  style: TextStyle(
                      color: const Color(0xffEE7A1D), fontSize: 27.sp),
                ),
              ),
              5.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "We sent you a code to verify your phone number",
                  style: TextStyle(
                      color: const Color(0xff7C8396), fontSize: 14.sp),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Sent to: +1 (457) 000 0000",
                  style: TextStyle(
                      color: const Color(0xff7C8396), fontSize: 14.sp),
                ),
              ),
              13.verticalSpace,
              SizedBox(
                width: 333.w,
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  textStyle: TextStyle(
                      fontSize: 53.sp, color: const Color(0xffEE7A1D)),
                  // boxShadows: const [
                  //   BoxShadow(
                  //     offset: Offset(0, 1),
                  //     color: Colors.black12,
                  //     blurRadius: 10,
                  //   )
                  // ],

                  pinTheme: PinTheme(
                    errorBorderColor: const Color(0xffB4B8C3),
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(13.r),
                    disabledColor: const Color(0xffB4B8C3),
                    fieldHeight: 68.h,
                    fieldWidth: 68.w,
                    activeFillColor: const Color(0xffD2D2D2),
                    activeColor: const Color(0xffD2D2D2),
                    inactiveFillColor: const Color(0xffD2D2D2),
                    inactiveColor: const Color(0xffD2D2D2),
                    selectedFillColor: const Color(0xffD2D2D2),
                    selectedColor: const Color(0xffD2D2D2),
                    borderWidth: 2,

                    // Custom BoxDecoration
                    // boxDecoration: BoxDecoration(
                    //   gradient: const LinearGradient(
                    //     begin: Alignment.topCenter,
                    //     end: Alignment.bottomCenter,
                    //     colors: [Colors.red, Colors.yellow],
                    //   ),
                    //   border: Border.all(
                    //     color: Colors.black,
                    //     width: 2,
                    //   ),
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  // backgroundColor: Colors.blue.shade50,
                  enableActiveFill: true,
                  controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      // currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    return true;
                  },
                ),
              ),
              21.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "I didn’t receive a code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xff7C8396), fontSize: 14.sp),
                ),
              ),
              21.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Resend Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xffEE7A1D),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                      text: 'Verify',
                    )),
              ),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

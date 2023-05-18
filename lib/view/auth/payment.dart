import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/button.dart';
import 'package:swish_basketball/widgets/paymentcard.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _switchValue = true;
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff5F677E),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push('/register/otp');
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color: const Color(0xff5F677E), fontSize: 18.sp),
                      ),
                    )
                  ],
                ),
              ),
              30.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Payment Method",
                  style: TextStyle(
                      color: const Color(0xffFF4A31), fontSize: 18.sp),
                ),
              ),
              13.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Column(
                  children: [
                    const AuthTextField(
                      hinttext: 'Enter Card hold name',
                      headertext: 'Card Holder Name',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox(),
                    ),
                    25.verticalSpace,
                    const AuthTextField(
                      hinttext: 'Enter your 16 Digits Card number',
                      headertext: 'Card Number',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox(),
                    ),
                    25.verticalSpace,
                    const AuthTextField(
                      hinttext: 'Type Full Name',
                      headertext: 'Mobile Number',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox(),
                    ),
                    25.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 229.w,
                          child: const AuthTextField(
                            hinttext: '16/06/2025',
                            headertext: 'Expiry Date',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                        ),
                        SizedBox(
                          width: 76.w,
                          child: const AuthTextField(
                            hinttext: '245',
                            headertext: 'CVV',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              45.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Select Subscription Options",
                  style: TextStyle(
                      color: const Color(0xffFF4A31), fontSize: 18.sp),
                ),
              ),
              7.verticalSpace,
              SizedBox(
                width: 333.w,
                height: 107.h,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xffFFBDB5), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFFFFFF),
                          Color(0xFFD7D7D7),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.check_circle_outline_outlined,
                        color: const Color(0xffFF4A31),
                        size: 30.w,
                      ),
                      title: Text("Free Plan",
                          style: TextStyle(
                              color: const Color(0xffFF4A31), fontSize: 18.sp)),
                      subtitle: Text(
                          "7 Days FREE throw tracking & 5-8 Training Video",
                          style: TextStyle(
                            color: const Color(0xff5F677E),
                            fontSize: 12.sp,
                          )),
                    ),
                  ),
                ),
              ),
              7.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xffFFBDB5), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFFFFFF),
                          Color(0xFFD7D7D7),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Basic",
                              style: TextStyle(
                                  color: const Color(0xffFF4A31),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold)),
                          7.verticalSpace,
                          Text("+ Unlimited Shot Tracking",
                              style: TextStyle(
                                  color: const Color(0xff5F677E),
                                  fontSize: 18.sp)),
                          Text("+ Analytics",
                              style: TextStyle(
                                  color: const Color(0xff5F677E),
                                  fontSize: 18.sp)),
                          20.verticalSpace,
                          Text("Pro",
                              style: TextStyle(
                                  color: const Color(0xffFF4A31),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold)),
                          7.verticalSpace,
                          Text("+ Unlimited Shot Tracking",
                              style: TextStyle(
                                  color: const Color(0xff5F677E),
                                  fontSize: 18.sp)),
                          Text("+ Analytics",
                              style: TextStyle(
                                  color: const Color(0xff5F677E),
                                  fontSize: 18.sp))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              50.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Pay annually save ",
                          style: TextStyle(
                              color: const Color(0xff5F677E), fontSize: 18.sp),
                        ),
                        Text(
                          " 2 months",
                          style: TextStyle(
                              color: const Color(0xffFF4A31), fontSize: 18.sp),
                        ),
                      ],
                    ),
                    FlutterSwitch(
                      height: 35.h,
                      width: 60.w,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 100.0,
                      value: _switchValue,
                      showOnOff: true,
                      activeTextColor: const Color(0xffFF4A31),
                      inactiveTextColor: const Color(0xffFF4A31),
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      toggleColor: const Color(0xffFF4A31),
                      switchBorder: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      onToggle: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Single",
                  style: TextStyle(
                      color: const Color(0xffFF4A31), fontSize: 18.sp),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 333.w,
                child: const Divider(
                  thickness: 2,
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 333.w,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentCard(
                      title: 'Basic',
                      des: '\$3 Monthly',
                      color1: Color(0xffFFFFFF),
                      color2: Color(0xffD7D7D7),
                      color3: Color(0xffFFFFFF),
                    ),
                    PaymentCard(
                      title: 'Pro',
                      des: '\$3 Monthly',
                      color1: Color(0xffFFFFFF),
                      color2: Color(0xffD7D7D7),
                      color3: Color(0xffFFFFFF),
                    )
                  ],
                ),
              ),
              36.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Double",
                  style: TextStyle(
                      color: const Color(0xffFF4A31), fontSize: 18.sp),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 333.w,
                child: const Divider(
                  thickness: 2,
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 333.w,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentCard(
                      title: 'Basic',
                      des: '\$3 Monthly',
                      color1: Color(0xffFFD7D2),
                      color2: Color(0xffFFBDB5),
                      color3: Color(0xffFFFFFF),
                    ),
                    PaymentCard(
                      title: 'Pro',
                      des: '\$3 Monthly',
                      color1: Color(0xffFFD7D2),
                      color2: Color(0xffFFBDB5),
                      color3: Color(0xffFFFFFF),
                    )
                  ],
                ),
              ),
              36.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Family (4 Users)",
                  style: TextStyle(
                      color: const Color(0xffFF4A31), fontSize: 18.sp),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 333.w,
                child: const Divider(
                  thickness: 2,
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 333.w,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentCard(
                      title: 'Basic',
                      des: '\$3 Monthly',
                      color1: Color(0xffFFCFC9),
                      color2: Color(0xffFFC086),
                      color3: Color(0xffFFFFFF),
                    ),
                    PaymentCard(
                      title: 'Pro',
                      des: '\$3 Monthly',
                      color1: Color(0xffFFCFC9),
                      color2: Color(0xffFFC086),
                      color3: Color(0xffFFFFFF),
                    )
                  ],
                ),
              ),
              30.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/register/otp');
                },
                child: SizedBox(
                    width: 333.w,
                    child: const GlobalButton(
                      text: 'Submit',
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

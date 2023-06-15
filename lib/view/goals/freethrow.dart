import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/customcontainer.dart';

class freethrow extends StatefulWidget {
  const freethrow({super.key});

  @override
  State<freethrow> createState() => _freethrowState();
}

class _freethrowState extends State<freethrow> {
  double _activeSliderValue = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
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
          "Free Throw %",
          style: TextStyle(
              color: Color(0xffEE7A1D),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                width: 355.w,
                height: 1000.h,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    10.verticalSpace,
                    SizedBox(
                      width: 351.w,
                      height: 17.h,
                      child: Text(
                        "TOTAL FREE THROW%",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5F677E)),
                      ),
                    ),
                    15.verticalSpace,
                    SizedBox(
                      width: 363,
                      child: CustomContainerOrange(
                        subtext: '48%',
                        data: "           ",
                        text: '48%',
                        value: ' / 78%',
                        date: 'June 6,2023',
                      ),
                    ),
                    20.verticalSpace,
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "WEEK END",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB4B8C3)),
                      ),
                    ),
                    10.verticalSpace,
                    CustomContainerOrange(
                      data: "-45%",
                      text: '48%',
                      value: '/200 Shots',
                      date: 'June 4,2023',
                      subtext: '(18%)',
                    ),
                    5.verticalSpace,
                    CustomContainerOrange(
                      data: "-50% ",
                      text: '5%',
                      value: '/ 50%',
                      date: 'June 4,2023',
                      subtext: '(18%)',
                    ),
                    5.verticalSpace,
                    CustomContainerOrange(
                      data: "-50%",
                      text: '0%',
                      value: '/ 50%',
                      date: 'June 4,2023',
                      subtext: '(21%)',
                    ),
                    5.verticalSpace,
                    CustomContainerOrange(
                      data: "+17%",
                      text: '67%',
                      value: '/ 50%',
                      date: 'June 4,2023',
                      subtext: '(28%)',
                    ),

                    CustomContainerOrange(
                      data: "-41% ",
                      text: '9%',
                      value: '/ 50%',
                      date: 'June 2,2023',
                      subtext: '(9%)',
                    ),
                    5.verticalSpace,
                    CustomContainerOrange(
                      data: "-41%",
                      text: '8%',
                      value: '/ 50%',
                      date: 'June 2,2023',
                      subtext: '(8%)',
                    ),
                    15.verticalSpace,
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "WEEK END",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB4B8C3)),
                      ),
                    ),
                    Container(
                      height: 50,
                    )
                    // Other items
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

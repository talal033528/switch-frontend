import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/customcontainer.dart';

class shotsatempt extends StatefulWidget {
  const shotsatempt({super.key});

  @override
  State<shotsatempt> createState() => _shotsatemptState();
}

class _shotsatemptState extends State<shotsatempt> {
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
          "Shots Attempts",
          style: TextStyle(
              color: Color(0xffEE7A1D),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
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
                        "TOTAL SHOT ATTEMPTS",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5F677E)),
                      ),
                    ),
                    15.verticalSpace,
                    SizedBox(
                      width: 360.w,
                      child: CustomContainer(
                        subtext: '',
                        data: "84",
                        text: '84',
                        value: '/200 Shots',
                        date: 'June 6,2023',
                      ),
                    ),
                    20.verticalSpace,
                    Text(
                      "WEEK END",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB4B8C3)),
                    ),
                    10.verticalSpace,
                    CustomContainer(
                      data: "61",
                      text: '5 Shots',
                      value: '/200 Shots',
                      date: 'June 4,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "56",
                      text: '11shot',
                      value: '/120 Shots',
                      date: 'June 4,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "45",
                      text: '24 Shots ',
                      value: '/120 Shots',
                      date: 'June 2,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "21",
                      text: '21 Shots',
                      value: '/120 Shots',
                      date: 'June 2,2023',
                      subtext: '',
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
                    15.verticalSpace,
                    CustomContainer(
                      data: "107",
                      text: '14 Shots',
                      value: '/120 Shots',
                      date: 'May 28,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "93",
                      text: '13 Shots ',
                      value: '120 Shots',
                      date: 'May 27,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "80",
                      text: '4 Shots ',
                      value: '/120 Shots',
                      date: 'May 27,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "79",
                      text: '11 Shots ',
                      value: '120 Shots',
                      date: 'May 25,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "65 ",
                      text: '9 Shots ',
                      value: '/120 Shots',
                      date: 'May 25,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "59",
                      text: '11 Shots ',
                      value: '120 Shots',
                      date: 'May 25,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "45",
                      text: '38 Shots ',
                      value: '/120 Shots',
                      date: 'May 25,2023',
                      subtext: '',
                    ),
                    5.verticalSpace,
                    CustomContainer(
                      data: "7",
                      text: '7 Shots ',
                      value: '/120 Shots',
                      date: 'May 25,2023',
                      subtext: '',
                    ),
                    // Other items
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

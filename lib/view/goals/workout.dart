import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/customcontainer.dart';

class workoutscreen extends StatefulWidget {
  const workoutscreen({super.key});

  @override
  State<workoutscreen> createState() => _shotsatemptState();
}

class _shotsatemptState extends State<workoutscreen> {
  final double _activeSliderValue = 60;
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
          child: const Icon(
            LucideIcons.arrowLeft,
            color: Color(0xffEE7A1D),
          ),
        ),
        title: Text(
          "Workout Time",
          style: TextStyle(
              color: const Color(0xffEE7A1D),
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
                        "TOTAL WORKOUT",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff5F677E)),
                      ),
                    ),
                    15.verticalSpace,
                    SizedBox(
                      width: 360.w,
                      child: const CustomContainerBlue(
                        subtext: "",
                        data: "00:20:01 ",
                        text: '00:20:01',
                        value: '/01:00:00',
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
                            color: const Color(0xffB4B8C3)),
                      ),
                    ),
                    10.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'June 4,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: " ",
                      data: "00:23:58 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'June 4,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:23:58 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'June 2,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:55 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'June 2,2023',
                    ),

                    15.verticalSpace,
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "WEEK END",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffB4B8C3)),
                      ),
                    ),
                    15.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'May 28,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'May 27,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'May 27,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'May 25,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'May 25,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'May 25,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'May 25,2023',
                    ),
                    5.verticalSpace,
                    const CustomContainerBlue(
                      subtext: "",
                      data: "00:20:01 ",
                      text: '00:20:01',
                      value: '/01:00:00',
                      date: 'May 25,2023',
                    ),

                    // Other items
                  ],
                ),
              ),
              50.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

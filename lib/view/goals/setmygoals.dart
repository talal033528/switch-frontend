import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/widgets/button.dart';

class SetMyGoalsScreen extends StatefulWidget {
  const SetMyGoalsScreen({super.key});

  @override
  State<SetMyGoalsScreen> createState() => _SetMyGoalsScreenState();
}

class _SetMyGoalsScreenState extends State<SetMyGoalsScreen> {
  double _activeSliderValue = 60;
  double _shotsSliderValue = 30;

  double _throwSliderValue = 70;

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
            child: const Icon(Icons.arrow_back_ios, color: Color(0xffEE7A1D))),
        title: Text(
          "Set My Goals",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: 333.w,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: Image.asset(
                  'assets/images/childph.png',
                  width: 45.w,
                ),
                title: Text(
                  "Mike Ottrando",
                  style: TextStyle(
                      fontSize: 18.sp, color: const Color(0xffEE7A1D)),
                ),
                subtitle: Text(
                  "Today May 19, 2023",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xffB4B8C3)),
                ),
              ),
            ),
            25.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/createyourgoals');
              },
              child: SizedBox(
                  width: 333.w,
                  child: const GlobalButton(
                    color: Color(0xffEE7A1D),
                    text: 'Create New Goal',
                  )),
            ),
            25.verticalSpace,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  border: Border.all(color: const Color(0xffB4B8C3), width: 1)),
              width: 333.w,
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SELECTED DAYS",
                      style: TextStyle(
                          color: const Color(0xff5F677E), fontSize: 14.sp),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff5F677E),
                          ),
                          child: const Center(
                            child: Text(
                              'M',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        5.horizontalSpace,
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff5F677E),
                          ),
                          child: const Center(
                            child: Text(
                              'W',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        5.horizontalSpace,
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff5F677E),
                          ),
                          child: const Center(
                            child: Text(
                              'S',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            25.verticalSpace,
            SizedBox(
              width: 333.w,
              child: Text(
                "YOUR GOALS",
                style:
                    TextStyle(color: const Color(0xff273251), fontSize: 14.sp),
              ),
            ),
            25.verticalSpace,
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xffD7D7D7),
                      Color(0xffFFFFFF)
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  border: Border.all(color: const Color(0xffB4B8C3), width: 1)),
              width: 333.w,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Activity Time",
                          style: TextStyle(
                            color: const Color(0xff5F677E),
                            fontSize: 14.sp,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "1.6H",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                            Text(
                              "/2H",
                              style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Slider(
                    value: _activeSliderValue,
                    max: 100,
                    thumbColor: const Color(0xff5484FF),
                    activeColor: const Color(0xff5484FF),
                    secondaryActiveColor: const Color(0xff5484FF),
                    inactiveColor: const Color(0xffC2C6CE),
                    divisions: 100,
                    label: _activeSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _activeSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            25.verticalSpace,
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xffD7D7D7),
                      Color(0xffFFFFFF)
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  border: Border.all(color: const Color(0xffB4B8C3), width: 1)),
              width: 333.w,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Number of Shots",
                          style: TextStyle(
                            color: const Color(0xff5F677E),
                            fontSize: 14.sp,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "40",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                            Text(
                              "/100 Shots",
                              style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Slider(
                    value: _shotsSliderValue,
                    max: 100,
                    thumbColor: const Color(0xff649E24),
                    activeColor: const Color(0xff649E24),
                    secondaryActiveColor: const Color(0xff649E24),
                    inactiveColor: const Color(0xffC2C6CE),
                    divisions: 100,
                    label: _shotsSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _shotsSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            25.verticalSpace,
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xffD7D7D7),
                      Color(0xffFFFFFF)
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  border: Border.all(color: const Color(0xffB4B8C3), width: 1)),
              width: 333.w,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Free Throw %",
                          style: TextStyle(
                            color: const Color(0xff5F677E),
                            fontSize: 14.sp,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "82%",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                            Text(
                              "/100%",
                              style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Slider(
                    value: _throwSliderValue,
                    max: 100,
                    thumbColor: const Color(0xffEE7A1D),
                    activeColor: const Color(0xffEE7A1D),
                    secondaryActiveColor: const Color(0xffEE7A1D),
                    inactiveColor: const Color(0xffC2C6CE),
                    divisions: 100,
                    label: _throwSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _throwSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

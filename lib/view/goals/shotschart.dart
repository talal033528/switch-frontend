import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/button.dart';
import 'package:swish_basketball/widgets/dropdown.dart';

class shotschart extends StatelessWidget {
  const shotschart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEE7A1D),
        leading: Icon(
          LucideIcons.arrowLeft,
          color: Color(0xffFFFFFF),
        ),
        title: Text(
          "Shots Charts",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF)),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Customized your analytics by selecting",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7C8396)),
              ),
              subtitle: Text(
                "below dropdown list.",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7C8396)),
              ),
            ),
            10.verticalSpace,
            SizedBox(
              width: 353.w,
              child: MyDropdownWidget(
                options: const [
                  'Shot Selection',
                  'Total Shots',
                  'Free Throw %'
                ],
                selectedValue: 'Shot Selection',
                onChanged: (newValue) {
                  // setState(() {
                  //   selectedValue = newValue;
                  // });
                },
              ),
            ),
            15.verticalSpace,
            Container(
              // height: 293.h,
              width: 350.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: const Color(0xffECEDEF),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  children: [
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Day",
                            style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontSize: 14.sp),
                          ),
                        ),
                        Text(
                          "Week",
                          style: TextStyle(
                              color: const Color(0xffEE7A1D),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Month",
                          style: TextStyle(
                              color: const Color(0xff7C8396), fontSize: 14.sp),
                        ),
                        10.verticalSpace,
                        Image.asset("assets/images/button.png"),
                      ],
                    ),
                    10.verticalSpace,
                    Divider(
                      thickness: 1,
                      color: Color(0xffB4B8C3),
                    ),
                    20.verticalSpace,
                    Image.asset("assets/images/coat3.png"),
                  ],
                ),
              ),
            ),
            50.verticalSpace,
            SizedBox(
              width: 350.w,
              height: 45.h,
              child: GlobalButton(
                  text: "Return to Dashboard", color: Color(0xff040A1C)),
            ),
          ],
        ),
      ),
    );
  }
}

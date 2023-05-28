import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NoitifcationScreen extends StatelessWidget {
  const NoitifcationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios, color: Color(0xffEE7A1D))),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 348.w,
                child: Text(
                  "October",
                  style: TextStyle(
                      color: const Color(0xff040A1C), fontSize: 14.sp),
                ),
              ),
              8.verticalSpace,
              SizedBox(
                width: 348.w,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: ((context, index) => Padding(
                          padding: EdgeInsets.only(top: 8.w),
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffECEDEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(14.w),
                              tileColor: (index & 1) == 0
                                  ? const Color(0xffF4FCEB)
                                  : const Color(0xffECEDEF),
                              title: const Text(
                                "Complete your weekly goals",
                                style: TextStyle(color: Color(0xff040A1C)),
                              ),
                              subtitle: const Text(
                                "1 day left to complete the weekly goals",
                                style: TextStyle(color: Color(0xff999EAD)),
                              ),
                              trailing: const Text(
                                "9:03 AM",
                                style: TextStyle(color: Color(0xff999EAD)),
                              ),
                            ),
                          ),
                        ))),
              ),
              8.verticalSpace,
              SizedBox(
                width: 348.w,
                child: Text(
                  "September",
                  style: TextStyle(
                      color: const Color(0xff040A1C), fontSize: 14.sp),
                ),
              ),
              8.verticalSpace,
              SizedBox(
                width: 348.w,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: ((context, index) => Padding(
                          padding: EdgeInsets.only(top: 8.w),
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffECEDEF)),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(14.w),
                              tileColor: (index & 1) == 0
                                  ? const Color(0xffFFEDEA)
                                  : const Color(0xffECEDEF),
                              title: const Text(
                                "Payment Reminder",
                                style: TextStyle(color: Color(0xff040A1C)),
                              ),
                              subtitle: const Text(
                                "Please proceed your September subscription",
                                style: TextStyle(color: Color(0xff999EAD)),
                              ),
                              trailing: const Text(
                                "9:03 AM",
                                style: TextStyle(color: Color(0xff999EAD)),
                              ),
                            ),
                          ),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

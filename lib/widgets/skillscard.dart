import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsCard extends StatelessWidget {
  final title;
  const SkillsCard({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111.w,
      height: 107.h,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xffFFBDB5), width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFFD7D2),
                Color(0xFFFFBDB5),
                Color(0xFFFFFFFF),
              ],
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outline_outlined,
                  color: Color(0xffEE7A1D),
                ),
                10.verticalSpace,
                Text(
                  "${title}",
                  style: TextStyle(
                      color: Color(0xffEE7A1D),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

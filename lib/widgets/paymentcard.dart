import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentCard extends StatelessWidget {
  final title;
  final des;
  final color1;
  final color2;
  final color3;
  const PaymentCard(
      {super.key, this.title, this.des, this.color1, this.color2, this.color3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 122.h,
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
              colors: [color1, color2, color3],
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outline_outlined,
                  color: Color(0xffFF4A31),
                ),
                10.verticalSpace,
                Text(
                  "${title}",
                  style: TextStyle(
                      color: Color(0xffFF4A31),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
                10.verticalSpace,
                Text(
                  "${des}",
                  style: TextStyle(
                    color: Color(0xff5F677E),
                    fontSize: 14.sp,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

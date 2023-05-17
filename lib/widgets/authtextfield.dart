import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextField extends StatelessWidget {
  final hinttext;
  final headertext;
  final obsecure;
  final suffixicon;
  final showsuffixicon;

  const AuthTextField(
      {super.key,
      required this.headertext,
      required this.hinttext,
      required this.suffixicon,
      required this.showsuffixicon,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headertext,
          style: TextStyle(color: Color(0xff5F677E), fontSize: 14.sp),
        ),
        9.verticalSpace,
        TextFormField(
          obscureText: obsecure,
          decoration: InputDecoration(
              suffixIcon: showsuffixicon ? Icon(suffixicon) : SizedBox(),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xffB4B8C3)),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xffB4B8C3)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xffB4B8C3)),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  borderSide: const BorderSide(
                    width: 1,
                  )),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  borderSide: BorderSide(width: 1, color: Color(0xffB4B8C3))),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xffB4B8C3))),
              hintText: hinttext,
              hintStyle:
                  const TextStyle(fontSize: 14, color: Color(0xFFECEDEF)),
              fillColor: Color(0xffB4B8C3),
              filled: true,
              contentPadding: EdgeInsets.all(10)),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextField extends StatelessWidget {
  final hinttext;
  final headertext;
  final obsecure;
  final suffixicon;
  final showsuffixicon;
  final controller;

  const AuthTextField(
      {super.key,
      required this.headertext,
      required this.hinttext,
      required this.suffixicon,
      required this.showsuffixicon,
      this.controller,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headertext != "")
          Text(
            headertext,
            style: TextStyle(color: const Color(0xff5F677E), fontSize: 14.sp),
          ),
        if (headertext != "") 9.verticalSpace,
        TextFormField(
          controller: controller,
          obscureText: obsecure,
          decoration: InputDecoration(
              suffixIcon: showsuffixicon
                  ? Icon(
                      suffixicon,
                      color: const Color(0xff5F677E),
                    )
                  : const SizedBox(),
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
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xffB4B8C3))),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xffB4B8C3))),
              hintText: hinttext,
              hintStyle:
                  const TextStyle(fontSize: 14, color: Color(0xFF5F677E)),
              fillColor: const Color(0xffECEDEF),
              filled: true,
              contentPadding: const EdgeInsets.all(10)),
        )
      ],
    );
  }
}

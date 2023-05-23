import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDropdownWidget extends StatelessWidget {
  final List<String> options;
  final String selectedValue;
  final Function(String) onChanged;

  const MyDropdownWidget({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        fillColor: const Color(0xffECEDEF),
        filled: true,
        contentPadding: const EdgeInsets.all(10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: const BorderSide(width: 1, color: Color(0xffB4B8C3)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: const BorderSide(width: 1, color: Color(0xffB4B8C3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: const BorderSide(width: 1, color: Color(0xffB4B8C3)),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            borderSide: const BorderSide(
              width: 1,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            borderSide: const BorderSide(width: 1, color: Color(0xffB4B8C3))),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            borderSide: const BorderSide(width: 1, color: Color(0xffB4B8C3))),
      ),
      value: selectedValue,
      items: options
          .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
          .toList(),
      onChanged: (s) => onChanged(s!),
    );
  }
}

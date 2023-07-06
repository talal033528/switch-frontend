import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatefulWidget {
  final String data;
  final String text;
  final String value;
  final String date;
  final String subtext;
  // final _activeSliderValue = "";
  final String linevalue;
  const CustomContainer(
      {super.key,
      required this.data,
      required this.text,
      required this.value,
      required this.date,
      required this.subtext,
      required this.linevalue});

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer>
    with TickerProviderStateMixin {
  final double _activeSliderValue = 60;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // double _shotsSliderValue = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFFFFFF),
            Color(0xffD7D7D7),
            Color(0xffFFFFFF),
          ],
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xffB4B8C3), width: 1),
      ),
      width: 353,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.date,
                      style: const TextStyle(
                        color: Color(0xff5F677E),
                        fontSize: 14,
                      ),
                    ),
                    15.horizontalSpace,
                    const Icon(
                      Icons.circle,
                      color: Color(0xff5F677E),
                      size: 8,
                    ),
                    5.horizontalSpace,
                    const Text(
                      "02:29 PM",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB4B8C3),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.data,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff273251),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff649E24),
                  ),
                ),
                Text(
                  widget.value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB4B8C3),
                  ),
                ),
              ],
            ),
          ),
          20.verticalSpace,
          Container(
            width: 335.w,
            padding: const EdgeInsets.only(bottom: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[300],
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Color(0xff649E24)),
              value: double.parse(widget.linevalue) /
                  100, // Set the progress value based on linevalue
            ),
          )
        ],
      ),
    );
  }
}

class CustomContainerBlue extends StatefulWidget {
  final String data;
  final String text;
  final String value;
  final String date;

  final String linevalue;

  const CustomContainerBlue({
    super.key,
    required this.data,
    required this.text,
    required this.value,
    required this.date,
    required this.linevalue,
  });

  @override
  _CustomContainerBlueState createState() => _CustomContainerBlueState();
}

class _CustomContainerBlueState extends State<CustomContainerBlue>
    with TickerProviderStateMixin {
  final double _activeSliderValue = 60;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFFFFFF),
            Color(0xffD7D7D7),
            Color(0xffFFFFFF),
          ],
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xffB4B8C3), width: 1),
      ),
      width: 353,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.date,
                      style: const TextStyle(
                        color: Color(0xff5F677E),
                        fontSize: 14,
                      ),
                    ),
                    10.horizontalSpace,
                    const Icon(
                      Icons.circle,
                      size: 8,
                      color: Color(0xff5F677E),
                    ),
                    10.horizontalSpace,
                    const Text(
                      "02:29 PM",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB4B8C3),
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.data,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                )
              ],
            ),
          ),
          10.verticalSpace,
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5484FF),
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    widget.value,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB4B8C3),
                    ),
                  ),
                ),
              ],
            ),
          ),
          20.verticalSpace,
          Container(
            width: 335.w,
            padding: const EdgeInsets.only(bottom: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[300],
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Color(0xff5484FF)),
              value: double.parse(widget.linevalue) /
                  100, // Set the progress value based on linevalue
            ),
          )
        ],
      ),
    );
  }
}

class CustomContainerOrange extends StatefulWidget {
  final String data;
  final String text;
  final String value;
  final String date;
  final String subtext;
  final String linevalue;

  const CustomContainerOrange({
    super.key,
    required this.data,
    required this.text,
    required this.value,
    required this.date,
    required this.subtext,
    required this.linevalue,
  });

  @override
  _CustomContainerOrangeState createState() => _CustomContainerOrangeState();
}

class _CustomContainerOrangeState extends State<CustomContainerOrange> {
  final double _activeSliderValue = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFFFFFF),
            Color(0xffD7D7D7),
            Color(0xffFFFFFF),
          ],
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xffB4B8C3), width: 1),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.date,
                      style: const TextStyle(
                        color: Color(0xff5F677E),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      "•",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5F677E),
                      ),
                    ),
                    const Text(
                      "02:29 PM",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB4B8C3),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.data,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB4B8C3),
                        ),
                      ),
                      5.horizontalSpace,
                      Text(
                        widget.subtext,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffEE7A1D),
                  ),
                ),
                Text(
                  widget.value,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffB4B8C3),
                  ),
                ),
              ],
            ),
          ),
          20.verticalSpace,
          Container(
            width: 335.w,
            padding: const EdgeInsets.only(bottom: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[300],
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Color(0xffEE7A1D)),
              value: double.parse(widget.linevalue) /
                  100, // Set the progress value based on linevalue
            ),
          )
        ],
      ),
    );
  }
}

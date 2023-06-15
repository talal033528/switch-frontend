import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatefulWidget {
  final String data;
  final String text;
  final String value;
  final String date;
  final String subtext;
  final _activeSliderValue = "";
  const CustomContainer(
      {super.key,
      required this.data,
      required this.text,
      required this.value,
      required this.date,
      required this.subtext});

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  double _activeSliderValue = 60;

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
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xffB4B8C3), width: 1),
      ),
      width: 353,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0, right: 8, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                20.horizontalSpace,
                Text(
                  widget.date,
                  style: TextStyle(
                    color: const Color(0xff5F677E),
                    fontSize: 14,
                  ),
                ),
                15.horizontalSpace,
                Text(
                  "•",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5F677E),
                  ),
                ),
                5.horizontalSpace,
                Text(
                  "02:29 PM",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB4B8C3),
                  ),
                ),
                173.horizontalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.data,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff273251),
                      ),
                    ),
                    // Text(
                    //   widget.subtext,
                    //   style: TextStyle(
                    //     color: Colors.black,
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 11,
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
          ),
          10.verticalSpace,
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff649E24),
                  ),
                ),
                Text(
                  widget.value,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB4B8C3),
                  ),
                ),
              ],
            ),
          ),
          Slider(
            value: _activeSliderValue,
            max: 100,
            thumbColor: const Color(0xff649E24),
            activeColor: const Color(0xff649E24),
            secondaryActiveColor: const Color(0xff5484FF),
            inactiveColor: const Color(0xffC2C6CE),
            divisions: 100,
            label: _activeSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _activeSliderValue = value;
                // _activeSliderValue = 40;
              });
            },
          ),
          // Slider(
          //   value: _shotsSliderValue,
          //   max: 100,
          //   thumbColor: Color.fromARGB(255, 158, 36, 67),
          //   activeColor: Color.fromARGB(255, 158, 36, 67),
          //   secondaryActiveColor: Color.fromARGB(255, 158, 36, 77),
          //   inactiveColor: const Color(0xffC2C6CE),
          //   divisions: 100,
          //   label: _shotsSliderValue.round().toString(),
          //   onChanged: (double value) {
          //     setState(() {
          //       _shotsSliderValue = value;
          //     });
          //   },
          // ),
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
  final String subtext;
  final _activeSliderValue = "";

  const CustomContainerBlue({
    required this.data,
    required this.text,
    required this.value,
    required this.date,
    required this.subtext,
  });

  @override
  _CustomContainerBlueState createState() => _CustomContainerBlueState();
}

class _CustomContainerBlueState extends State<CustomContainerBlue> {
  double _activeSliderValue = 60;

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
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xffB4B8C3), width: 1),
      ),
      width: 353,
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                5,
                33,
                5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  15.horizontalSpace,
                  Text(
                    widget.date,
                    style: TextStyle(
                      color: const Color(0xff5F677E),
                      fontSize: 14,
                    ),
                  ),
                  10.horizontalSpace,
                  Text(
                    "•",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5F677E),
                    ),
                  ),
                  Text(
                    "02:29 PM",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB4B8C3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 5, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.data,
                          style: TextStyle(
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
            10.verticalSpace,
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 30, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  10.horizontalSpace,
                  SizedBox(
                    width: 250.w,
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5484FF),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      widget.value,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB4B8C3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Slider(
              value: _activeSliderValue,
              max: 100,
              thumbColor: const Color(0xff5484FF),
              activeColor: const Color(0xff5484FF),
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
    );
  }
}

class CustomContainerOrange extends StatefulWidget {
  final String data;
  final String text;
  final String value;
  final String date;
  final String subtext;

  const CustomContainerOrange({
    required this.data,
    required this.text,
    required this.value,
    required this.date,
    required this.subtext,
  });

  @override
  _CustomContainerOrangeState createState() => _CustomContainerOrangeState();
}

class _CustomContainerOrangeState extends State<CustomContainerOrange> {
  double _activeSliderValue = 60;

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
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xffB4B8C3), width: 1),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 18),
                Text(
                  widget.date,
                  style: TextStyle(
                    color: const Color(0xff5F677E),
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  "•",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5F677E),
                  ),
                ),
                Text(
                  "02:29 PM",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB4B8C3),
                  ),
                ),
                140.horizontalSpace,
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, bottom: 0, top: 0, right: 10),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          widget.data,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB4B8C3),
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          widget.subtext,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          10.verticalSpace,
          Padding(
            padding:
                const EdgeInsets.only(left: 20, bottom: 0, top: 0, right: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffEE7A1D),
                  ),
                ),
                Text(
                  widget.value,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB4B8C3),
                  ),
                ),
              ],
            ),
          ),
          Slider(
            value: _activeSliderValue,
            max: 100,
            thumbColor: const Color(0xffEE7A1D),
            activeColor: const Color(0xffEE7A1D),
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
    );
  }
}

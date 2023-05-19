import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:go_router/go_router.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios, color: Color(0xffFF4A31))),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Account",
          style: TextStyle(color: const Color(0xffFF4A31), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              21.verticalSpace,
              SizedBox(
                width: 353.w,
                child: Text(
                  "Notification Settings",
                  style: TextStyle(
                      color: const Color(0xffFF4A31),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              20.verticalSpace,
              const SettingWidget(title: 'Push Notification'),
              const SettingWidget(title: 'Challenge Notification'),
              const SettingWidget(title: 'Match Reminder Notification'),
              const SettingWidget(title: 'Community Notification'),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingWidget extends StatefulWidget {
  final title;
  const SettingWidget({super.key, this.title});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 353.w,
      child: Column(
        children: [
          2.verticalSpace,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              widget.title,
              style: TextStyle(color: const Color(0xff5F677E), fontSize: 14.sp),
            ),
            FlutterSwitch(
              height: 35.h,
              width: 68.w,
              padding: 4.0,
              toggleSize: 15.0,
              borderRadius: 100.0,
              value: _switchValue,
              showOnOff: true,
              activeTextColor: const Color(0xffFF4A31),
              inactiveTextColor: Colors.grey,
              activeColor: Colors.white,
              inactiveColor: Colors.white,
              toggleColor: _switchValue ? const Color(0xffFF4A31) : Colors.grey,
              switchBorder: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              onToggle: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ]),
          2.verticalSpace,
          Divider(
            thickness: 2.h,
            color: const Color(0xffF5F6F7),
          ),
          2.verticalSpace,
        ],
      ),
    );
  }
}

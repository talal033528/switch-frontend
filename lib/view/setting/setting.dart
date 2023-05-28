import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
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
                  "General",
                  style: TextStyle(
                      color: const Color(0xffEE7A1D),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              20.verticalSpace,
              GestureDetector(
                  onTap: () {
                    context.push('/home/child/account');
                  },
                  child: settingWidget(LucideIcons.user, 'Account')),
              settingWidget(LucideIcons.bell, 'Notifications'),
              settingWidget(LucideIcons.gift, 'Coupons'),
              settingWidget(LucideIcons.lock, 'Data & Privacy'),
              settingWidget(LucideIcons.logOut, 'Logout'),
              settingWidget(LucideIcons.trash2, 'Delete Account'),
              20.verticalSpace,
              SizedBox(
                width: 353.w,
                child: Text(
                  "Feedback",
                  style: TextStyle(
                      color: const Color(0xffEE7A1D),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              20.verticalSpace,
              settingWidget(LucideIcons.bug, 'Report a Bug'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget settingWidget(icon, title) {
  return SizedBox(
    width: 353.w,
    child: Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: Icon(icon),
          title: Text(
            title,
            style: TextStyle(color: const Color(0xff5F677E), fontSize: 14.sp),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        Divider(
          thickness: 2.h,
          color: const Color(0xffF5F6F7),
        )
      ],
    ),
  );
}

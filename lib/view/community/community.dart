import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/button.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Community",
          style: TextStyle(color: const Color(0xffFF4A31), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            23.verticalSpace,
            SizedBox(
              width: 352.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Hoopra Community',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xff273251),
                        ),
                      ),
                      7.verticalSpace,
                      SizedBox(
                        width: 280.w,
                        child: Text(
                            "Invite your friends to Hoopra & share your scores result & Challenge them",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: const Color(0xff7C8396),
                            )),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push('/home/addcommunity');
                    },
                    child: const Icon(
                      LucideIcons.plusCircle,
                      color: Color(0xffFF4A31),
                    ),
                  )
                ],
              ),
            ),
            23.verticalSpace,
            SizedBox(
              width: 352.w,
              child: const GlobalButton(
                text: 'Allow Phone Book Access',
              ),
            ),
            36.verticalSpace,
            SizedBox(
              width: 352.w,
              child: Text(
                'Connected Friends ',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: const Color(0xff273251),
                    fontWeight: FontWeight.bold),
              ),
            ),
            27.verticalSpace,
            Expanded(
              child: SizedBox(
                width: 352.w,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: Image.asset(
                          'assets/images/userph.png',
                          width: 40.w,
                        ),
                        title: Text(
                          'Brooklyn Simmons',
                          style: TextStyle(
                              color: const Color(0xff38425F), fontSize: 14.sp),
                        ),
                        trailing: const Icon(LucideIcons.minusCircle),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';

class VideoLibraryView extends StatelessWidget {
  const VideoLibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Swish Video Library",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              27.verticalSpace,
              SizedBox(
                width: 353.w,
                child: Text(
                  'Session 101',
                  style: TextStyle(
                      color: const Color(0xff5F677E), fontSize: 18.sp),
                ),
              ),
              11.verticalSpace,
              SizedBox(
                width: 353.w,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.w,
                    crossAxisSpacing: 15.w,
                    childAspectRatio: 3 / 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 167.w,
                      height: 50.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.asset('assets/images/art.png')),
                          Icon(
                            LucideIcons.playCircle,
                            color: Colors.white,
                            size: 25.h,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

class VideoLibraryView extends StatelessWidget {
  const VideoLibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      'assets/images/im1.png',
      'assets/images/im2.png',
      'assets/images/im3.png',
      'assets/images/im4.png',
      'assets/images/im5.png',
      'assets/images/im6.png',
      'assets/images/im7.png',
      'assets/images/im8.png',
      'assets/images/im9.png', 'assets/images/im10.png',

      // Add more image paths as needed
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            LucideIcons.arrowLeft,
            color: Color(0xffEE7A1D),
          ),
        ),
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
                  'Title here',
                  style: TextStyle(
                      color: const Color(0xff5F677E), fontSize: 18.sp),
                ),
              ),
              11.verticalSpace,
              // SizedBox(
              //   width: 353.w,
              //   child: GridView.builder(
              //     shrinkWrap: true,
              //     physics: const NeverScrollableScrollPhysics(),
              //     itemCount: 6,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       mainAxisSpacing: 15.w,
              //       crossAxisSpacing: 15.w,
              //       childAspectRatio: 3 / 2,
              //     ),
              //     itemBuilder: (BuildContext context, int index) {
              //       return SizedBox(
              //         width: 167.w,
              //         height: 50.h,
              //         child: Stack(
              //           alignment: Alignment.center,
              //           children: [
              //             ClipRRect(
              //                 borderRadius: BorderRadius.circular(10.r),
              //                 child: Image.asset('assets/images/art.png')),
              //             Icon(
              //               LucideIcons.playCircle,
              //               color: Colors.white,
              //               size: 25.h,
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // )

              SizedBox(
                width: 353.w,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imagePaths.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.w,
                    crossAxisSpacing: 15.w,
                    childAspectRatio: 3 / 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    String imagePath = imagePaths[index];
                    return SizedBox(
                      width: 167.w,
                      height: 50.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(imagePath),
                          ),
                          Positioned(
                            child: Icon(
                              LucideIcons.playCircle,
                              color: Colors.white,
                              size: 25.h,
                            ),
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

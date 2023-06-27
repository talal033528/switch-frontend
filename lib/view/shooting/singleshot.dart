import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/button.dart';

class singleshot extends StatefulWidget {
  const singleshot({super.key});

  @override
  State<singleshot> createState() => _singleshotState();
}

class _singleshotState extends State<singleshot> with TickerProviderStateMixin {
  bool _switchValue = false;
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    const Tab(
      text: 'FREE THROW',
    ),
    const Tab(
      text: 'SPOT SELECTION',
    ),
  ];

  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(LucideIcons.arrowLeft, color: Color(0xffFFFFFF))),
        elevation: 0,
        backgroundColor: Color(0xffEE7A1D),
        centerTitle: true,
        title: Text(
          "Single Shot Entry",
          style: TextStyle(color: const Color(0xffFFFFFF), fontSize: 14.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            5.verticalSpace,
            SizedBox(
                width: 407.w,
                height: 274.h,
                child: Image.asset(
                  "assets/images/adlutcoat.png",
                  fit: BoxFit.contain,
                )),
            100.verticalSpace,
            Container(
              width: 393.w,
              height: 80.h,
              decoration: BoxDecoration(
                color: Color(0xff000000),
                border: Border.all(width: 2.w, color: Color(0xff000000)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 333.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffECEDEF),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TabBar(
                      controller: _controller,
                      tabs: _tabs,
                      onTap: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      indicator: BoxDecoration(
                        color: const Color(0xffEE7A1D),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      indicatorColor: Colors.blueGrey,
                      unselectedLabelColor: const Color(0xffEE7A1D),
                      labelColor: Colors.white,
                    ),
                  ),
                  // Image.asset(_switchValue
                  //     ? "assets/images/1screen.png"
                  //     : "assets/images/adlutcoat.png")
                ],
              ),
            ),
            // SizedBox(
            //   width: 397.w,
            //   height: 127.h,
            //   child: Image.asset("assets/images/adlutbutton.png"),
            // ),
            Container(
              width: 393.w,
              height: 127.h,
              decoration: BoxDecoration(
                border: Border.all(width: 2.w, color: Color(0xffECEDEF)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 85.w,
                    height: 85.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff8FE133),
                    ),
                    child: Icon(
                      LucideIcons.check,
                      size: 35.sp,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Container(
                    width: 85.w,
                    height: 85.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff000000),
                    ),
                    child: Icon(
                      Icons.close,
                      size: 35.sp,
                      color: Color(0xffFFFFFF),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color(0xffEE7A1D),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 210.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Text(
                        //   "Shot\n#",
                        //   style:
                        //       TextStyle(color: Colors.white, fontSize: 20.sp),
                        // ),
                        Container(
                          width: 73.w,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                          ),
                          child: Text(
                            '01',
                            style: GoogleFonts.jetBrainsMono(
                                color: Colors.white, fontSize: 34.sp),
                          ),
                        ),
                        Container(
                          width: 73.w,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                          ),
                          child: Text(
                            '05',
                            style: GoogleFonts.jetBrainsMono(
                                color: Colors.white, fontSize: 34.sp),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 5),
                    child: Container(
                      width: 183.w,
                      color: Color(0xffEE7A1D),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text(
                          //   "Score\n%",
                          //   style:
                          //       TextStyle(color: Colors.white, fontSize: 20.sp),
                          // ),
                          Container(
                            width: 152.w,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                            ),
                            child: Text(
                              '20%',
                              style: GoogleFonts.jetBrainsMono(
                                  color: Colors.white, fontSize: 34.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            19.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/shooting/PracticeResult');
              },
              child: SizedBox(
                width: 333.w,
                child: const GlobalButton(
                  text: 'Get Result',
                  color: Color(0xffEE7A1D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

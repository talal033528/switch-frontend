import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/button.dart';
import 'package:swish_basketball/widgets/dropdown.dart';

class ThrowAndSpotSelectionScreen extends StatefulWidget {
  const ThrowAndSpotSelectionScreen({super.key});

  @override
  State<ThrowAndSpotSelectionScreen> createState() =>
      _ThrowAndSpotSelectionScreenState();
}

class _ThrowAndSpotSelectionScreenState
    extends State<ThrowAndSpotSelectionScreen> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  bool _switchValue = false;

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
          "Bulk Entry > Free Throw",
          style: TextStyle(color: const Color(0xffFFFFFF), fontSize: 14.sp),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            // _switchValue
            //     ? Image.asset(
            //         "assets/images/adlut1.png",
            //         width: 336.w,
            //         height: 247.h,
            //         fit: BoxFit.contain,
            //       )

            //     :
            10.verticalSpace,
            SizedBox(
              width: 406.w,
              height: 274.h,
              child: Image.asset(
                'assets/images/adlutcoat.png',
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 435.h,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      color: Colors.black,
                      child: Column(
                        children: [
                          19.verticalSpace,
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
                          21.verticalSpace,
                          Container(
                            color: const Color(0xffEE7A1D),
                            height: 2,
                            width: double.infinity,
                          ),
                          21.verticalSpace,
                          SizedBox(
                            width: 370.w,
                            child: Text(
                              "Type your Score here",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                          ),
                          19.verticalSpace,
                          SizedBox(
                            width: 370.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 120,
                                  child: AuthTextField(
                                    hinttext: 'Buckets',
                                    headertext: '',
                                    obsecure: false,
                                    showsuffixicon: false,
                                    suffixicon: SizedBox(),
                                  ),
                                ),
                                SizedBox(
                                  width: 120.w,
                                  child: MyDropdownWidget(
                                    options: const [
                                      'Attempt',
                                    ],
                                    selectedValue: 'Attempt',
                                    onChanged: (newValue) {
                                      // setState(() {
                                      //   selectedValue = newValue;
                                      // });
                                    },
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // context.push('/home/child/shooting/throwandspot');
                                  },
                                  child: SizedBox(
                                    width: 120.w,
                                    child: const GlobalButton(
                                      text: 'Submit',
                                      color: Color(0xffEE7A1D),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          19.verticalSpace,
                          Container(
                            color: const Color(0xffEE7A1D),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 210.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // Text(
                                      //   "Shot\n#",
                                      //   style: TextStyle(
                                      //       color: Colors.white,
                                      //       fontSize: 20.sp),
                                      // ),
                                      Container(
                                        width: 73.w,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.all(3.0),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.r)),
                                        ),
                                        child: Text(
                                          '01',
                                          style: GoogleFonts.jetBrainsMono(
                                              color: Colors.white,
                                              fontSize: 34.sp),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 73.w,
                                        padding: const EdgeInsets.all(3.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.r)),
                                        ),
                                        child: Text(
                                          '05',
                                          style: GoogleFonts.jetBrainsMono(
                                              color: Colors.white,
                                              fontSize: 34.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 3, bottom: 5),
                                  child: Container(
                                    width: 183.w,
                                    color: Color(0xffEE7A1D),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Text(
                                        //   "Score\n%",
                                        //   style: TextStyle(
                                        //       color: Colors.white,
                                        //       fontSize: 20.sp),
                                        // ),
                                        Container(
                                          width: 152.w,
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(3.0),
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.r)),
                                          ),
                                          child: Text(
                                            '20%',
                                            style: GoogleFonts.jetBrainsMono(
                                                color: Colors.white,
                                                fontSize: 34.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
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
            )
          ],
        ),
      ),
    );
  }
}

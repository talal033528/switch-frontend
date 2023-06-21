import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/widgets/button.dart';
import 'package:swish_basketball/widgets/dropdown.dart';

class CriteriaSelectionScreen extends StatelessWidget {
  const CriteriaSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedValue = "";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios, color: Color(0xffFFFFFF))),
        elevation: 0,
        backgroundColor: Color(0xffEE7A1D),
        centerTitle: true,
        title: Text(
          "SWISH - Smart Hoops, Smart Result",
          style: TextStyle(color: const Color(0xffFFFFFF), fontSize: 14.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 350.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 296.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xff000000)),
                    ),
                    FractionalTranslation(
                        translation: const Offset(0.0, 0.05),
                        child: Image.asset(
                          'assets/images/player1.png',
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                  width: 333.w,
                  child: Text(
                    'Game Type',
                    style: TextStyle(
                        color: const Color(0xff5F677E),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  )),
              SizedBox(
                height: 9.h,
              ),
              SizedBox(
                width: 333.w,
                child: MyDropdownWidget(
                  options: const [
                    'Select type game or practice ',
                    'Game',
                    'Practice'
                  ],
                  selectedValue: 'Select type game or practice ',
                  onChanged: (newValue) {
                    // setState(() {
                    //   selectedValue = newValue;
                    // });
                  },
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              SizedBox(
                  width: 333.w,
                  child: Text(
                    'Method',
                    style: TextStyle(
                        color: const Color(0xff5F677E),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  )),
              SizedBox(
                height: 9.h,
              ),
              SizedBox(
                width: 333.w,
                child: MyDropdownWidget(
                  options: const [
                    'Select Method',
                    'Single Shot Entry',
                    'Bulk Entry',
                    'Voice Command'
                  ],
                  selectedValue: 'Select Method',
                  onChanged: (newValue) {
                    selectedValue = newValue;
                  },
                ),
              ),
              SizedBox(
                height: 39.h,
              ),
              GestureDetector(
                onTap: () {
                  print(selectedValue);
                  if (selectedValue == "Bulk Entry") {
                    context.push('/home/child/shooting/throwandspot');
                  }
                  if (selectedValue == "Single Shot Entry") {
                    context.push('/home/child/shooting/singleshot');
                  }
                  if (selectedValue == "Voice Command") {
                    context.push('/home/child/shooting/voicecommand');
                  }
                },
                child: SizedBox(
                  width: 333.w,
                  child: const GlobalButton(
                    text: 'Start',
                    color: Color(0xffEE7A1D),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

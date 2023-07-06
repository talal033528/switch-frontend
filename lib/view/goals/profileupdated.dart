import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/button.dart';

class EDITPROFILE extends StatefulWidget {
  const EDITPROFILE({super.key});

  @override
  State<EDITPROFILE> createState() => _EDITPROFILEState();
}

class _EDITPROFILEState extends State<EDITPROFILE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            LucideIcons.arrowLeft,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.white, fontSize: 21.sp),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(LucideIcons.settings),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.verticalSpace,
              Container(
                child: Stack(
                  children: [
                    Opacity(
                      opacity:
                          0.10, // Specify the opacity value between 0.0 (fully transparent) and 1.0 (fully opaque)
                      child: Image.asset("assets/images/Group 352.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 65,
                      height: 65,
                      child: Stack(
                        children: [
                          25.verticalSpace,

                          // Image.asset("assets/icons/edit")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                  width: 333.w,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 125.w,
                            height: 125.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/dave.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 35,
                              height: 40,
                              // decoration: BoxDecoration(
                              //   shape: BoxShape.circle,
                              //   color: Colors.white,
                              // ),
                              child: Icon(
                                LucideIcons.camera,
                                color: Color(0xffEE7A1D),
                              ),
                            ),
                          ),
                        ],
                      ),
                      44.verticalSpace,
                      AuthTextField(
                        hinttext: 'Type Full Name',
                        headertext: 'Full Name',
                        obsecure: false,
                        showsuffixicon: false,
                        suffixicon: const SizedBox(),
                      ),
                      48.verticalSpace,
                      SizedBox(
                          width: 353.w,
                          child: const GlobalButton(
                            color: Color(0xffEE7A1D),
                            text: 'SAVE CHANGES',
                          )),
                      48.verticalSpace,
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

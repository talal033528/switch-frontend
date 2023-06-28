import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/dropdown.dart';

import '../../widgets/authtextfield.dart';
import '../../widgets/skillscard.dart';

class kidsregisterscreen extends StatelessWidget {
  const kidsregisterscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              64.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Text(
                  "Create your free account",
                  style: TextStyle(
                      color: const Color(0xffEE7A1D), fontSize: 27.sp),
                ),
              ),
              5.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Column(
                  children: [
                    const AuthTextField(
                      hinttext: 'Type Child Name',
                      headertext: 'Child Name',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox(),
                    ),
                    25.verticalSpace,
                    const AuthTextField(
                      hinttext: 'Date of Birth',
                      headertext: 'Age',
                      obsecure: false,
                      showsuffixicon: true,
                      suffixicon: Icons.calendar_month,
                    ),
                    25.verticalSpace,
                    // const AuthTextField(
                    //   hinttext: 'Court Size',
                    //   headertext: 'Select Basketball Court',
                    //   obsecure: false,
                    //   showsuffixicon: true,
                    //   suffixicon: Icons.arrow_drop_down,
                    // ),
                    SizedBox(
                      width: 333.w,
                      child: MyDropdownWidget(
                        options: const [
                          'Court Size',
                          'Youth-Middle-High-School',
                          'Women -College',
                          "Men's College",
                          "NBA",
                        ],
                        selectedValue: 'Court Size',
                        onChanged: (newValue) {
                          // setState(() {
                          //   selectedValue = newValue;
                          // });
                        },
                      ),
                    ),

                    25.verticalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rate your Skills',
                          style: TextStyle(
                              color: const Color(0xff5F677E), fontSize: 14.sp),
                        ),
                        9.verticalSpace,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillsCard(
                              title: 'Beginner',
                            ),
                            SkillsCard(
                              title: 'Intermediate',
                            ),
                            SkillsCard(
                              title: 'Expert',
                            )
                          ],
                        )
                      ],
                    ),
                    25.verticalSpace,
                    const AuthTextField(
                      hinttext: 'example@gmail.com',
                      headertext: 'E-mail Address',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox,
                    ),
                    25.verticalSpace,
                    const AuthTextField(
                      hinttext: '+1 (457) 000 0000',
                      headertext: 'Your Child Mobile Number (if any)',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox,
                    ),
                    25.verticalSpace,
                    const AuthTextField(
                      hinttext: '***************',
                      headertext: "Set your child's password",
                      obsecure: false,
                      showsuffixicon: true,
                      suffixicon: Icons.visibility_off,
                    ),
                    25.verticalSpace,
                  ],
                ),
              ),
              60.verticalSpace,
              SizedBox(
                width: 333.w,
                child: GestureDetector(
                  onTap: () {
                    context.go('/register/payment');
                  },
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        LucideIcons.arrowRight,
                        size: 36,
                        color: Color(0xffEE7A1D),
                      )),
                ),
              ),
              5.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

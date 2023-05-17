import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/skillscard.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    Tab(
      text: 'MYSELF',
    ),
    Tab(
      text: 'FOR MY CHILD',
    ),
  ];
  late TabController _controller;
  @override
  void initState() {
    _controller = new TabController(length: 2, vsync: this);

    super.initState();
  }

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
                  style: TextStyle(color: Color(0xffFF4A31), fontSize: 27.sp),
                ),
              ),
              5.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Create your free account ? ",
                        style: TextStyle(
                            color: Color(0xff7C8396), fontSize: 14.sp)),
                    Text(
                      "Signin",
                      style: TextStyle(
                          color: Color(0xffFF4A31),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              31.verticalSpace,
              Container(
                width: 333.w,
                decoration: BoxDecoration(
                  color: Color(0xffECEDEF),
                  borderRadius: BorderRadius.circular(20.0),
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
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  indicatorColor: Colors.blueGrey,
                  unselectedLabelColor: Color(0xffFF4A31),
                  labelColor: Colors.white,
                ),
              ),
              34.verticalSpace,
              SizedBox(
                width: 333.w,
                child: _selectedIndex == 0
                    ? Column(
                        children: [
                          AuthTextField(
                            hinttext: 'Type Full Name',
                            headertext: 'Full Name',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                          25.verticalSpace,
                          AuthTextField(
                            hinttext: 'Type Full Name',
                            headertext: 'E-mail Address',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                          25.verticalSpace,
                          AuthTextField(
                            hinttext: 'Type Full Name',
                            headertext: 'Mobile Number',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                          25.verticalSpace,
                          AuthTextField(
                            hinttext: '*************',
                            headertext: 'Password',
                            obsecure: true,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          AuthTextField(
                            hinttext: 'Type Child Name',
                            headertext: 'Child Name',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                          25.verticalSpace,
                          AuthTextField(
                            hinttext: 'Date of Birth',
                            headertext: 'Age',
                            obsecure: false,
                            showsuffixicon: true,
                            suffixicon: Icons.calendar_month,
                          ),
                          25.verticalSpace,
                          AuthTextField(
                            hinttext: 'Court Size',
                            headertext: 'Select Basketball Court',
                            obsecure: false,
                            showsuffixicon: true,
                            suffixicon: Icons.calendar_month,
                          ),
                          25.verticalSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rate your Skills',
                                style: TextStyle(
                                    color: Color(0xff5F677E), fontSize: 14.sp),
                              ),
                              9.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                          AuthTextField(
                            hinttext: 'example@gmail.com',
                            headertext: 'E-mail Address',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox,
                          ),
                          25.verticalSpace,
                          AuthTextField(
                            hinttext: '+1 (457) 000 0000',
                            headertext: 'Your Child Mobile Number (if any)',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox,
                          ),
                          25.verticalSpace,
                          AuthTextField(
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
              _selectedIndex == 0 ? 50.verticalSpace : 5.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.check,
                    color: Color(0xffFF4A31),
                    size: 42.w,
                  ),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AddCommunity extends StatelessWidget {
  const AddCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios, color: Color(0xffFF4A31))),
        title: Text(
          "Add to your Community",
          style: TextStyle(color: const Color(0xffFF4A31), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            20.verticalSpace,
            SizedBox(
              width: 352.w,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            27.verticalSpace,
            Expanded(
              child: Container(
                color: Colors.white,
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
                        trailing: const Icon(LucideIcons.plusCircle),
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

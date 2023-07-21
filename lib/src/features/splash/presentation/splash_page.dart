import 'package:auto_route/auto_route.dart';
import 'package:book_store/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_wigets/login_button.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D1D4E),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 180.h, left: (MediaQuery.of(context).size.width - 200) / 2, right: (MediaQuery.of(context).size.width - 200) / 2),
              child: Image.asset(
                "assets/images/Logo.png",
                height: 129.h,
              ),
            ),
            SizedBox(
              height: 285.h,
            ),
            LoginButton(
              onTap: () {
                context.pushRoute(const LoginRoute());
              },
              text: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: "Manrope"),
              ),
            ),
            Bounceable(
              onTap: () {},
              child: Container(
                height: 59.5.h,
                width: 348.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.sp)),
                child: Center(
                  child: Text(
                    'Skip',
                    style: TextStyle(color: const Color(0xff6251DD), fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: "Manrope"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

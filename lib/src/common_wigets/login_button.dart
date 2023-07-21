import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final void Function() onTap;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        height: 59.5.h,
        width: 348.w,
        decoration: BoxDecoration(color: const Color(0xffEF6B4A), borderRadius: BorderRadius.circular(7.sp)),
        child: Center(
          child: text,
        ),
      ),
    );
  }
}

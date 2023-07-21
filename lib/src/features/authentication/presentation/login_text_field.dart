import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.isObscureTxt,
    required this.controller,
  });
  final String title;
  final String hintText;
  final bool isObscureTxt;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 11.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Manrope", color: Color(0xff090937)),
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            controller: controller,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Manrope', color: Colors.black),
            obscureText: isObscureTxt ? isObscureTxt : false,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffF4F4FF),
              border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(4)),
              hintText: hintText,
              hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Manrope', color: Color.fromRGBO(9, 9, 55, 0.40)),
            ),
          )
        ],
      ),
    );
  }
}

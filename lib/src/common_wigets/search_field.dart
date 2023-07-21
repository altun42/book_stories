import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.onChanged,
  });
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
      child: SizedBox(
        height: 50.h,
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, color: const Color.fromRGBO(9, 9, 55, 0.40), fontFamily: 'Manrope'),
              prefixIcon: Padding(
                padding: EdgeInsets.all(15.sp),
                child: ImageIcon(
                  const AssetImage('assets/icons/Search.png'),
                  size: 10.sp,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(15.sp),
                child: ImageIcon(
                  const AssetImage('assets/icons/Filter.png'),
                  size: 10.sp,
                ),
              ),
              filled: true,
              fillColor: const Color(0xffF4F4FF),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.sp), borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}

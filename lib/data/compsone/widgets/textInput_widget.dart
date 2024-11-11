import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/data/compsone/constants/colors.dart';


class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        filled: true,
        fillColor: filledColor,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 18.h,
        ),
      ),
    );
  }
}

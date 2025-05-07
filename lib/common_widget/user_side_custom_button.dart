import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';

class UserSideCustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const UserSideCustomButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // <-- YOU MISSED THIS BEFORE
      child: Container(
        width: double.infinity,
        height: 55.h,
        decoration: BoxDecoration(
          color: AppColors.c111214,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextFontStyle.headline24cFFFFFFpoppinsw600,
          ),
        ),
      ),
    );
  }
}

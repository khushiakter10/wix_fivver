import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

class CustomBoilerFixing extends StatelessWidget {
  final String text;
  final String texttwo;
  final String textthree;
  final VoidCallback onTapCalendar;
  final String selectedDate;

  const CustomBoilerFixing({
    super.key,
    required this.text,
    required this.texttwo,
    required this.textthree,
    required this.onTapCalendar,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(32.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.cF2F2F2,
            spreadRadius: 1.r,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.cD9D9D9,
                  borderRadius: BorderRadius.circular(23.r),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(29.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  style: TextFontStyle.headline20c132234satoshiw700,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.cFFF7D4,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  texttwo,
                  style: TextFontStyle.headline12textcFFCC00poppinsw500,
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(12.h),
          Row(
            children: [
              Text(
                textthree,
                style: TextFontStyle.headline14textc364B63poppinsw400,
              ),
              const Spacer(),
              GestureDetector(
                onTap: onTapCalendar,
                child: SvgPicture.asset(
                  Assets.icons.calender2,
                  height: 18.h,
                ),
              ),
              UIHelper.horizontalSpace(6.w),
              Text(
                selectedDate,
                style: TextFontStyle.headline14textc364B63poppinsw400,
              ),
            ],
          ),
          UIHelper.verticalSpace(12.h),
          Text(
            'My home boiler has stopped heating water. It turns on but doesn\'t produce hot water. I need someone to check and fix it ASAP.',
            style: TextFontStyle.headline14textc0C0D19poppinsw400,
          ),
        ],
      ),
    );
  }
}

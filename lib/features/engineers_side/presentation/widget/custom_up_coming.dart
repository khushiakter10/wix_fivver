import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class CustomUpComing extends StatelessWidget {
  final String text;
  final Widget icon;
  const CustomUpComing({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Jobs', style: TextFontStyle.headline12c132234satoshiw700),
          UIHelper.verticalSpace(16.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: AppColors.cD3DDE7)),
                child: Row(
                  children: [
                    icon,
                    UIHelper.horizontalSpace(8.w),
                    Text(text,
                        style: TextFontStyle.headline12c132234satoshiw400)
                  ],
                ),
              ),
              UIHelper.horizontalSpace(12.w),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: AppColors.cD3DDE7)),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.calanderjob,height: 24.h),
                    UIHelper.horizontalSpace(8.w),
                    Text('Pending Jobs    ',
                        style: TextFontStyle.headline12c132234satoshiw400)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

class CustomDesign extends StatelessWidget {
  final String title;
  final Widget icon;
  final String subtitle;
  const CustomDesign({
    super.key,
    required this.title,
    required this.icon,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.cE2E8F0, width: 1.w),
            borderRadius: BorderRadius.circular(16.r)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.cE2E8F0)),
              child: Row(
                children: [
                 icon,
                  UIHelper.horizontalSpace(8.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( title,  style: TextFontStyle.headline16c1E293Bsatoshiw700),
                      UIHelper.verticalSpace(4.h),
                      Text( subtitle, style: TextFontStyle.headline14c475569satoshiw500 .copyWith(fontSize: 12.sp))


                    ],
                  )
                ],
              ),
            ),
            UIHelper.verticalSpace(4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('10:25',
                    style: TextFontStyle.headline14c475569satoshiw500
                        .copyWith(fontSize: 12.sp)),
                UIHelper.horizontalSpace(4.w),
                SvgPicture.asset(Assets.icons.signutre, height: 16.h)
              ],
            ),
            UIHelper.verticalSpace(4.h),
          ],
        ));
  }
}

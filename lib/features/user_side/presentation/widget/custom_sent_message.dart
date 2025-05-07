import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class CustomSentMessage extends StatelessWidget {
  final Widget icon;
  final String title;
  const CustomSentMessage({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return

      Container(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            border: Border.all(
              color: AppColors.cE2E8F0,
            )),
        child: Column(
          children: [
            Row(
              children: [
              icon,
                UIHelper.horizontalSpace(8.w),
                Text(
                 title,
                  style: TextFontStyle.headline14c475569satoshiw500
                      .copyWith(fontSize: 16.sp),
                )
              ],
            ),
            UIHelper.verticalSpace(40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34.r),
                    gradient: const LinearGradient(
                      colors: [AppColors.c12AEFF, AppColors.c0B50FF],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text('Send',
                          style: TextFontStyle.headline15cFFFFFFsatoshiw700
                              .copyWith(fontSize: 20.sp)),
                      UIHelper.horizontalSpace(8.w),
                      Image.asset(Assets.images.sentmessage.path, height: 20.h)
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

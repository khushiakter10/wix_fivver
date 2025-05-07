import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class JobDoneCustom extends StatelessWidget {
  final Widget icon;
  final String text;
  final String texttwo;

  const JobDoneCustom({
    super.key,
    required this.icon,
    required this.text,
    required this.texttwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.cD3DDE7),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    icon,
                    UIHelper.horizontalSpace(4.w),
                    Text(
                      text,style: TextFontStyle.headline14c132235poppinsw500,

                    ),
                  ],
                ),
                UIHelper.verticalSpace(9.h),
                Text(
                  '10' ,style: TextFontStyle.headline18c08875Dpoppinsw700,
                ),
              ],
            ),
          ),
        ),
        UIHelper.horizontalSpace(12.w),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.cD3DDE7),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Assets.icons.clock2,height: 20.h),
                    UIHelper.horizontalSpace(4.w),
                    Text(
                      texttwo,
                      style: TextFontStyle.headline14c132235poppinsw500,
                    ),
                  ],
                ),
                UIHelper.verticalSpace(2.h),
                Row(
                  children: [
                    Text('Standard',
                        style: TextFontStyle.headline14c484848poppinsw500),
                    const Spacer(),
                    Text('17:20:30',
                        style: TextFontStyle.headline14cFF4931poppinsw500),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Left',
                        style: TextFontStyle.headline10cFF4931poppinsw400),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

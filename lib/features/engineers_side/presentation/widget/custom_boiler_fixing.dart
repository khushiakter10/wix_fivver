import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class CustomBoilerFixing extends StatelessWidget {
  final String title;
  final String text;
  const CustomBoilerFixing({
    super.key, required this.title, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics:  const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: AppColors.cE1E6EF),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 17.sp)),
                    Text(text,style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 17.sp))]),

                UIHelper.verticalSpace(8.h),
                Row(
                  children: [
                    SvgPicture.asset(Assets.icons.calender2, height: 18.h),
                    UIHelper.horizontalSpace(6.w),
                    Text('31/01/2023', style: TextFontStyle.headline12c364B63satoshiw400),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 8.w),
                      decoration: BoxDecoration(
                        color: AppColors.cDEFCE3,
                        borderRadius: BorderRadius.circular(99.r),
                      ),
                      child: Text('Completed', style: TextFontStyle.headline12c2FED52satoshiw600),
                    )
                  ],
                ),
                UIHelper.verticalSpace(8.h),
                Text('ID: #0CAC6C64', style: TextFontStyle.headline12c364B63satoshiw400),
                UIHelper.verticalSpace(12.h),
                UIHelper.customDivider(color: AppColors.cE1E6EF, height: 1.h),
                UIHelper.verticalSpace(12.h),
                Row(
                  children: [
                    SvgPicture.asset(Assets.icons.readlocation, height: 20.h),
                    UIHelper.horizontalSpace(8.w),
                    Text('Work Place', style: TextFontStyle.headline16c132234satoshiw500),
                    const Spacer(),
                    Text('35.56KM', style: TextFontStyle.headline13c364B63satoshiw700),
                    UIHelper.horizontalSpace(9.w),

                    ///////////////////////////////////lathi////////////////////////////////////////////
                    Container(height: 12.h, width: 1.w, color: AppColors.cE1E6EF),
                    ///////////////////////////////////Done////////////////////////////////////////////

                    UIHelper.horizontalSpace(9.w),
                    Text('60 Mins', style: TextFontStyle.headline13c364B63satoshiw700),
                  ],
                ),
                UIHelper.verticalSpace(12.h),
                UIHelper.customDivider(color: AppColors.cE1E6EF, height: 1.h),
                UIHelper.verticalSpace(12.h),
                Text(
                  'My home boiler has stopped heating water. It turns on but doesn’t produce hot water. I need someone to check and fix it ASAP.',
                  style: TextFontStyle.headline12c0C0D19satoshiw400.copyWith(fontSize: 14.sp),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return UIHelper.verticalSpace(12.h);
      },
      itemCount: 2,
    );
  }
}
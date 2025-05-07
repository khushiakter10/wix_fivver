import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class CustomTodyJob extends StatelessWidget {
  final String title;
  final Widget icon;


  const CustomTodyJob({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container( padding: EdgeInsets.symmetric( horizontal: 16.w,vertical: 16.h),
          decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: AppColors.cD3DDE7)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  icon, UIHelper.horizontalSpace(4.w),
                  Text(title,  style: TextFontStyle.headline14c132235satoshiw500)

                ],
              ),
              UIHelper.verticalSpace(4.h),
              Text('10', style: TextFontStyle.headline18c08875Dsatoshiw700)
            ],
          ),
        ),
        UIHelper.horizontalSpace(12.w),
        Container(  padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: AppColors.cD3DDE7)),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.clock2, height: 20.h),
                  UIHelper.horizontalSpace(4.w),
                  Text('Todays Job',    style: TextFontStyle.headline14c132235satoshiw500)

                ],
              ),
              UIHelper.verticalSpace(4.h),
              Text('17 Hrs', style: TextFontStyle.headline18c08875Dsatoshiw700)

            ],
          ),
        ),
      ],
    );



  }
}

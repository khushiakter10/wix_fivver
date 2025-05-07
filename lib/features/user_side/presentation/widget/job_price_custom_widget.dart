import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class JobPriceCustomWidget extends StatelessWidget {
  final String textjob;
  final String textoctober;
  final String titletext;

  const JobPriceCustomWidget({
    super.key,
    required this.textjob,
    required this.textoctober,
    required this.titletext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.cF5F5F5, borderRadius: BorderRadius.circular(16.r)),
      child: Padding(padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(textjob, style: TextFontStyle.headline14c0C0D19satoshiw500),
            UIHelper.verticalSpace(14.h),
            Text('Status', style: TextFontStyle.headline12c6D6E75satoshiw400),
            UIHelper.verticalSpace(4.h),
            //////////////////////////////////////Active///////////////////////////////////////////
            Row(children: [
              Container(padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  decoration: const BoxDecoration(
                    color: AppColors.cEBF9BB,
                  ),
                  child: Row(children: [SvgPicture.asset(Assets.icons.indicatorgreen, height: 8.h),
                    UIHelper.horizontalSpace(6.w),
                    Text('Active',style: TextFontStyle.headline12c0C0D19satoshiw400)

                  ]))
            ]),
            ////////////////////////////////////////Done//////////////////////////////////////////

            UIHelper.verticalSpace(16.h),
            Text('Creation Date',style: TextFontStyle.headline12c6D6E75satoshiw400),
            UIHelper.verticalSpace(4.h),

            Text(textoctober,style: TextFontStyle.headline14c0C0D19satoshiw500),
            UIHelper.verticalSpace(16.h),

            Text('Recruitment Period',style: TextFontStyle.headline12c6D6E75satoshiw400),
            UIHelper.verticalSpace(4.h),

            Text(titletext,style: TextFontStyle.headline14c0C0D19satoshiw500),
            UIHelper.verticalSpace(16.h),

            Text('Last Update',style: TextFontStyle.headline12c6D6E75satoshiw400),

            UIHelper.verticalSpace(4.h),
            Text('October 10, 2030',style: TextFontStyle.headline14c0C0D19satoshiw500),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class DividerCustomWidget extends StatelessWidget {
  final String textdivider;

  const DividerCustomWidget({
    super.key,
    required this.textdivider,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: UIHelper.customDivider(
            height: 1.h,color: AppColors.cE1E6EF)),

        UIHelper.horizontalSpace(16.w),
        Text(textdivider, style: TextFontStyle.headline12c607080satoshiw500),
        UIHelper.horizontalSpace(16.w),

        Expanded(
          child: UIHelper.customDivider(  height: 2,  color: AppColors.cE1E6EF)),

      ],
    );
  }
}

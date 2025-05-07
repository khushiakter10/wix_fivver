import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class CustomDividerWidget extends StatelessWidget {
  final String text;

  const CustomDividerWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: UIHelper.customDivider(
              height: 1,
            color:  AppColors.cE1E6EF
          ),
        ),
        Text(text,style: TextFontStyle.headline12c607080satoshiw500,),

        Expanded(
          child: UIHelper.customDivider(
              height: 1.h,
              color: AppColors.cE1E6EF
          ),
        ),
      ],
    );
  }
}

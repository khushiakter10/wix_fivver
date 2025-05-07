import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class CustomContainerAddition extends StatelessWidget {


  final List<String> image;
  final List<String> text;
  const CustomContainerAddition({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: image.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 0.99,
      ),
      itemBuilder: (context, index) {

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
          decoration: BoxDecoration(
            color: AppColors.cF3F3F4,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image[index],
                height: 24.h,
                fit: BoxFit.contain,
              ),
              UIHelper.verticalSpace(8.h),
              Expanded(
                child: Text(
                  text[index],
                  textAlign: TextAlign.center,
                  style: TextFontStyle.headline14c676C75poppinsw500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
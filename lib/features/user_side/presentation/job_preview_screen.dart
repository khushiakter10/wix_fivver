import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wix_fivver/common_widget/user_side_custom_button.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/features/user_side/presentation/widget/job_price_custom_widget.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

class JobPreviewScreen extends StatefulWidget {
  const JobPreviewScreen({super.key});

  @override
  State<JobPreviewScreen> createState() => _JobPreviewScreenState();
}

class _JobPreviewScreenState extends State<JobPreviewScreen> {
  void _showCustomBottomSheet() {
    Get.bottomSheet(
      Container(
        padding:  EdgeInsets.symmetric(vertical: 20.h),
        decoration: BoxDecoration(
          color: AppColors.cFDFDFD,
          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
        child: SingleChildScrollView(padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 12.h),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Boiler Not Producing Hot Water',style: TextFontStyle.headline22c0C0D19satoshiw500),
              UIHelper.verticalSpace(12.h),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.map,height: 20.h),
                  UIHelper.horizontalSpace(12.w),
                  Text('45 Westfield Avenue, London, E15 4HQ',style: TextFontStyle.headline14c5E5E5Esatoshiw400)
                ]),
              UIHelper.verticalSpace(12.h),
              Row(
                  children: [
                    SvgPicture.asset(Assets.icons.calendarTick,height: 20.h),
                    UIHelper.horizontalSpace(12.w),
                    Text('7th April | 4:00 PM – 6:00 PM',style: TextFontStyle.headline14c5E5E5Esatoshiw400)

                  ]
              ),
              UIHelper.verticalSpace(32.h),
              Text('Job Description',style: TextFontStyle.headline16c0C0D19satoshiw700),
              UIHelper.verticalSpace(8.h),
              Text('Our boiler isn’t heating the water. It turns on and makes noise, but no hot water is coming out. This started yesterday. We’ve tried resetting it, but it didn’t help.',style: TextFontStyle.headline14c5E5E5Esatoshiw400),
              UIHelper.verticalSpace(24.h),

              ///////////////////////////////////////////Boiler Info//////////////////////////////////////////
              Text('Boiler Info',style: TextFontStyle.headline16c0C0D19satoshiw700),
              UIHelper.verticalSpace(8.h),

              Row(
                children: [SvgPicture.asset(Assets.icons.tagRight,height: 16.h),
                  UIHelper.horizontalSpace(12.w),
                  Text('Type: Combi',style: TextFontStyle.headline14c5E5E5Esatoshiw400)
                ]),
              UIHelper.verticalSpace(4.h),

              Row(
                children: [SvgPicture.asset(Assets.icons.tagRight,height: 16.h),
                  UIHelper.horizontalSpace(12.w),
                  Text('Brand/Model: Vaillant ecoTEC Plus 832',style: TextFontStyle.headline14c5E5E5Esatoshiw400)
                ]),
              UIHelper.verticalSpace(4.h),

              Row(
                children: [SvgPicture.asset(Assets.icons.tagRight,height: 16.h),
                  UIHelper.horizontalSpace(12.w),
                  Text('Age: 6 years',style: TextFontStyle.headline14c5E5E5Esatoshiw400)
                ]),

              UIHelper.verticalSpace(4.h),
              Row(
                children: [SvgPicture.asset(Assets.icons.tagRight,height: 16.h),
                  UIHelper.horizontalSpace(12.w),
                  Text('Last Service: Over 1 year ago',style: TextFontStyle.headline14c5E5E5Esatoshiw400)
                ]),
              UIHelper.verticalSpace(4.h),
              Row(
                children: [SvgPicture.asset(Assets.icons.tagRight,height: 16.h),
                  UIHelper.horizontalSpace(12.w),
                  Expanded(child: Text('Symptoms: No hot water, radiators cold, clicking sound',style: TextFontStyle.headline14c5E5E5Esatoshiw400)),
                ]),
              ///////////////////////////////////////////Done//////////////////////////////////////////
              UIHelper.verticalSpace(24.h),
              Text('Property Info',style: TextFontStyle.headline16c0C0D19satoshiw700),
              UIHelper.verticalSpace(8.h),
              Row(
                  children: [SvgPicture.asset(Assets.icons.tagRight,height: 16.h),
                    UIHelper.horizontalSpace(12.w),
                    Text('Type: Combi',style: TextFontStyle.headline14c5E5E5Esatoshiw400),
                  ]),
              UIHelper.verticalSpace(4.h),
              Row(
                  children: [SvgPicture.asset(Assets.icons.tagRight,height: 16.h),
                    UIHelper.horizontalSpace(12.w),
                    Expanded(child: Text('Symptoms: No hot water, radiators cold, clicking sound',style: TextFontStyle.headline14c5E5E5Esatoshiw400)),
                  ]),
              UIHelper.verticalSpace(24.h),
              Text('Tools & Notes',style: TextFontStyle.headline16c0C0D19satoshiw700),
              Row(
                  children: [SvgPicture.asset(Assets.icons.tagRight,height: 16.h),
                    UIHelper.horizontalSpace(7.w),
                    Expanded(child: Text('Bring compact tools for tight space Possible low pressure or ignition issue',style: TextFontStyle.headline14c5E5E5Esatoshiw400)),
                  ]),
              UIHelper.verticalSpace(32.h),


         /////////////////////////////////////////////JobPrice///////////////////////////////////

              const JobPriceCustomWidget(textjob: 'Job Price', textoctober: 'October 1, 2030', titletext: 'October 1, 2030 - December 31, 2030'),

      ///////////////////////////////////////////Done/////////////////////////////////////////////

            ],
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: UserSideCustomButton(
          text: 'Continue',
          onTap: () => _showCustomBottomSheet(),
        ),
      ),
    );
  }
}



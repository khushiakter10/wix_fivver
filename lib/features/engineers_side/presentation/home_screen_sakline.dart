import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/custom_today_job.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/custom_up_coming.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class HomeSaklainScreen extends StatefulWidget {
  const HomeSaklainScreen({super.key});

  @override
  State<HomeSaklainScreen> createState() => _HomeSaklainScreenState();
}

class _HomeSaklainScreenState extends State<HomeSaklainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: SafeArea(
          child: Column(
            children: [
             UIHelper.verticalSpace(14.h),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.menuButton,  height: 40.h),
                  UIHelper.horizontalSpace(82.w),
                 Container( padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 16.w),
                   decoration: BoxDecoration(
                     color: AppColors.c08875D,
                     borderRadius: BorderRadius.circular(99.r)
                   ),
                   child: Text('Online',style: TextFontStyle.headline15cFFFFFFsatoshiw700),
                 ),
                  UIHelper.horizontalSpace(82.w),
                  SvgPicture.asset(Assets.icons.notificatonmenu,  height: 40.h),


                ],
              ),

            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Divider(color: AppColors.cF0F5FA,thickness: 11, height: 8.h),

              Container(  padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16.w),
                decoration:  const BoxDecoration(
                  color: AppColors.cFFFFFF
                ),
                child:  Row(
                  children: [
                    Image.asset(Assets.images.profile.path, height: 48.h),
                    UIHelper.horizontalSpace(16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Saklain Sarowor',style: TextFontStyle.headline16c132234satoshiw500),
                        Text('ID: #1324574890',style: TextFontStyle.headline12c364B63satoshiw400),

                      ]),
                    UIHelper.horizontalSpace(110.w),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 1,
                      itemSize: 16.0,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) =>
                          SvgPicture.asset(Assets.icons.star,height: 20.h),
                      onRatingUpdate: (rating) {
                      },
                    ),
                   // UIHelper.horizontalSpace(4.w),
                    Text('4.5',style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 16.sp))
                  ],
                )),
            //////////////////////Divder////////////////////////////////////////

            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 8.h),

            UIHelper.verticalSpace(16.h),
            CustomTodyJob(title: 'Todays Job', icon:  SvgPicture.asset(Assets.icons.boxbag,height: 20.h)),
            UIHelper.verticalSpace(16.h),
            //////////////////////Done////////////////////////////////////////////////////

          Divider(color: AppColors.cF0F5FA,thickness: 11, height: 8.h),
            UIHelper.verticalSpace(16.h),

            CustomUpComing(text: 'Upcoming Jobs', icon: SvgPicture.asset(Assets.icons.calanderjob,height: 24.h)),
            UIHelper.verticalSpace(16.h),
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 8.h),
            UIHelper.verticalSpace(16.h),

            ///////////////////on Going Job//////////////////////////////////////////////
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('On Going Job',style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 18.sp)),
                      const Spacer(),
                      const Text('View All'),
                      SvgPicture.asset(Assets.icons.arrwbox,height: 16.h)
                    ],
                  ),
                  UIHelper.verticalSpace(16.h),
                  Container(padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(color: AppColors.cE1E6EF,width: 1.w)
                    ),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Boiler Fixing',style: TextFontStyle.headline16c132234satoshiw500),
                            Text('28 Feb, 10:10 AM',style: TextFontStyle.headline12c08875Dsatoshiw500)
                          ],
                        ),
                        UIHelper.verticalSpace(4.h),

                        Row(
                          children: [
                            Text('Starts in:',style: TextFontStyle.headline12c364B63satoshiw400),
                            UIHelper.horizontalSpace(4.w),
                            Text('1 Hr 12 mins',style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 12.sp))
                          ],
                        ),
                      ],
                    ),
                  ),
                  UIHelper.verticalSpace(12.h),

                  Container(padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(color: AppColors.cE1E6EF,width: 1.w)
                    ),
                    child: Column(
                      children: [

                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Boiler Fixing',style: TextFontStyle.headline16c132234satoshiw500),
                            Text('28 Feb, 10:10 AM',style: TextFontStyle.headline12c08875Dsatoshiw500)
                          ],
                        ),
                        UIHelper.verticalSpace(4.h),

                        Row(
                          children: [
                            Text('Starts in:',style: TextFontStyle.headline12c364B63satoshiw400),
                            UIHelper.horizontalSpace(4.w),
                            Text('2 Hr 30 mins',style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 12.sp))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //////////////////////////////on Going Job////////////////////////////////////


          ],
        ),
      ),
    );
  }
}





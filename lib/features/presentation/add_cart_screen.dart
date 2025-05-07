import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wix_fivver/common_widget/user_side_custom_button.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class AddCartScreen extends StatefulWidget {
  const AddCartScreen({super.key});

  @override
  State<AddCartScreen> createState() => _AddCartScreenState();
}

class _AddCartScreenState extends State<AddCartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.cFFFFFF,
        leading: Transform.scale(
          scale: 0.80,
            child: SvgPicture.asset(Assets.icons.arrw,height: 24.h)),
        title: Text('Add Card',style: TextFontStyle.headline20c132234satoshiw700),
      ),
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(42.h),


            ////////////////////divider/////////////////////

            UIHelper.verticalSpace(20.h),
            Text('Card Holder Name',style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 12.sp)),
            UIHelper.verticalSpace(4.h),

            UserSideCustomTextFormField(
              hintTxt: 'Ex: Saklain Sarowor',
              hinStyle: TextFontStyle.headline20c132234poppinsw400,
            ),
            UIHelper.verticalSpace(20.h),
            Text('Card Number',style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 12.sp)),
            UIHelper.verticalSpace(4.h),
            UserSideCustomTextFormField(
              hintTxt: 'Enter apartment...',
              hinStyle: TextFontStyle.headline20c132234poppinsw400,
            ),
            UIHelper.verticalSpace(20.h),

            Row(
              children: [
                Expanded(
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV',style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 12.sp)),
                      UserSideCustomTextFormField(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 16.w),
                        hintTxt: 'Ex: 1337',
                        hinStyle: TextFontStyle.headline20c132234poppinsw400,
                      ),
                    ],
                  ),
                ),
               UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiration Date',style: TextFontStyle.headline20c132234satoshiw700.copyWith(fontSize: 12.sp)),
                      UserSideCustomTextFormField(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 16.w),
                        hintTxt: '03/29',
                        hinStyle: TextFontStyle.headline20c132234poppinsw400,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            UIHelper.verticalSpace(200.h),

            Center(child: UserSideCustomButton(text: 'Save & Continue', onTap: () {  },)),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({super.key});

  @override
  State<CheckInScreen> createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Center(
          child: Padding( padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( padding: EdgeInsets.symmetric(vertical: 40.h),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:  LinearGradient(
                      colors: [ AppColors.cD5E7FF, AppColors.cD4E5FF],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(child: SvgPicture.asset(Assets.icons.locationblue,height: 40.h))),

                UIHelper.verticalSpace(32.h),
                Text(  "What is your location?",style: TextFontStyle.headline20c050505satoshiw700),

                UIHelper.verticalSpace(8.h),
                Text("We need to know your location to suggest nearby Jobs.", style:TextFontStyle.headline12c45474Bsatoshiw400),
                UIHelper.verticalSpace(18.h),
                SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient:  const LinearGradient(
                          colors: [AppColors.c1CA7FF,  AppColors.c0F53FF],
                        ),
                        borderRadius: BorderRadius.circular(99.r),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(  "Allow your location",style:  TextFontStyle.headline16cFFFFFFsatoshiw500),

                      ),
                    ),
                  ),
                ),

                UIHelper.verticalSpace(16.h),
                Text( "Enter location manually", style: TextFontStyle.headline14c050505satoshiw500),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

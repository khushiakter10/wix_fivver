import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';
import 'Widget/job_done_custom.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> iconcalanderbox = [
      'assets/icons/calanderjob.svg',
      'assets/icons/account.svg',
      'assets/icons/qustion.svg',
      'assets/icons/delete (2).svg',
      'assets/icons/delete (2).svg',
      'assets/icons/logout.svg',
    ];

    final List<String> currentjob = [
      'Current Job',
      'My Account',
      'Help',
      'Terms & Conditions',
      'Delete Account',
      'Logout',
    ];

    final List<String> arrwRighitGry = [
      'assets/icons/arrw righit gry.svg',
      'assets/icons/arrw righit gry.svg',
      'assets/icons/arrw righit gry.svg',
      'assets/icons/arrw righit gry.svg',
      'assets/icons/arrw righit gry.svg',
      'assets/icons/arrw righit gry.svg',
    ];

    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(137.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.c289DFE,
                  AppColors.c0B50FE,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            Assets.icons.witharw,
                            height: 28.h,
                          ),
                        ),
                     UIHelper.horizontalSpace(20.w),
                        Text('Profile',
                            style: TextFontStyle.headline20cFFFFFFpoppins700),
                      ],
                    ),
                   UIHelper.verticalSpace(20.h),

                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 28.r,
                        backgroundImage: AssetImage(Assets.images.profile.path),
                      ),
                      title: Text(
                        "Saklain Sarowor",
                        style: TextFontStyle.headline20cFFFFFFpoppins700
                            .copyWith(fontSize: 17.sp),
                      ),
                      subtitle: Text(
                        "+91 12345 67890",
                        style: TextFontStyle.headline13cD3DDE7poppinsw400,
                      ),
                      trailing: SvgPicture.asset(
                        Assets.icons.arrwright,
                        height: 20.h,
                      ),
                      onTap: () {
                        // onTap action
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JobDoneCustom( text: 'Job Done', texttwo: 'Subscription', icon: SvgPicture.asset(Assets.icons.jobbox,height: 20.h)),
            UIHelper.verticalSpace(12.h),
            Divider(
              color: AppColors.cF0F5FA,
              thickness: 10,
              height: 8.h,
            ),
            UIHelper.verticalSpace(16.h),
            SizedBox(
              height: 400.h,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SvgPicture.asset(
                        iconcalanderbox[index],
                        height: 24.h,
                      ),
                      UIHelper.horizontalSpace(12.w),
                      Text(
                        currentjob[index],
                        style: TextFontStyle.headline14c132235poppinsw500),
                      const Spacer(),
                      SvgPicture.asset(
                        arrwRighitGry[index],
                        height: 16.h,
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Column(
                    children: [
                      UIHelper.verticalSpace(16.h),
                      UIHelper.customDivider(
                        height: 2.h,
                        color: AppColors.cE1E6EF
                      ),
                      UIHelper.verticalSpace(16.h),
                    ],
                  );
                },
                itemCount: currentjob.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



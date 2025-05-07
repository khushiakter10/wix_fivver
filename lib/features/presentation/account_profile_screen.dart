import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wix_fivver/common_widget/user_side_custom_button.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/features/presentation/Widget/top_curve_clipper_widget.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

class AccountProfileScreen extends StatefulWidget {
  const AccountProfileScreen({super.key});

  @override
  State<AccountProfileScreen> createState() => _AccountProfileScreenState();
}

class _AccountProfileScreenState extends State<AccountProfileScreen> {
  String fullPhoneNumber = '';
  final TextEditingController scrollController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final numberController = TextEditingController();
  final genderController = TextEditingController();
  bool checkbox1 = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    numberController.dispose();
    genderController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(225.h),
        child: Stack(
          children: [
            const TopCurveClipperWidget(
              backgroundColor: AppColors.cEBF0F0,
              height: 240,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                child: Stack(
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.arrw, height: 24.h),
                            UIHelper.horizontalSpace(20.w),
                            Text( 'My Account',style: TextFontStyle.headline20c132234satoshiw700),
                            const Spacer(),
                            SvgPicture.asset(Assets.icons.setting, height: 24.h),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: CircleAvatar(
                          radius: 50.r,
                          backgroundImage: AssetImage(Assets.images.myaccountprofile.path),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(24.h),
            Text('Name', style: TextFontStyle.headline16c111214poppinsw700),
            UIHelper.verticalSpace(8.h),
            UserSideCustomTextFormField(
              controller: nameController,
              hintTxt: 'Robert Lewis',
              hinStyle: TextFontStyle.headline16c393C43poppinsw400,
              prefixIcon: Transform.scale(
                scale: 0.60,
                child: SvgPicture.asset(Assets.icons.profilemen, height: 24.h),
              ),
            ),
            UIHelper.verticalSpace(16.h),
            Text('Email', style: TextFontStyle.headline16c111214poppinsw700),
            UIHelper.verticalSpace(8.h),
            UserSideCustomTextFormField(
              controller: emailController,
              hintTxt: 'elementary221b@gmail.com',
              hinStyle: TextFontStyle.headline16c393C43poppinsw400,
              prefixIcon: Transform.scale(
                scale: 0.60,
                child: SvgPicture.asset(Assets.icons.sms, height: 24.h),
              ),
            ),
            UIHelper.verticalSpace(16.h),
            Text('Phone Number', style: TextFontStyle.headline16c111214poppinsw700),
            UIHelper.verticalSpace(8.h),

            Row(
              children: [
                Container(
                    width: 120.w,
                   height: 42.h,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: AppColors.cE1E6EF),
                  ),
                  child: IntlPhoneField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    ),
                    initialCountryCode: 'GB',
                    showDropdownIcon: true,
                    flagsButtonPadding: const EdgeInsets.only(left: 4, right: 4),
                    dropdownIconPosition: IconPosition.trailing,
                    disableLengthCheck: true,
                    onChanged: (phone) {
                      setState(() {
                        fullPhoneNumber = phone.completeNumber;
                      });
                    },
                    onCountryChanged: (country) {
                    },
                  ),
                ),
                UIHelper.horizontalSpace(8.w),
                Expanded(
                  child: UserSideCustomTextFormField(
                    controller: numberController,
                    hintTxt: '7437768442',
                    hinStyle: TextFontStyle.headline16c393C43poppinsw400,
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(16.h),
            Text('Gender', style: TextFontStyle.headline16c111214poppinsw700),
            UIHelper.verticalSpace(8.h),

            UserSideCustomTextFormField(
              controller:  genderController,
              hintTxt: 'Male',
              hinStyle: TextFontStyle.headline16c393C43poppinsw400,
              prefixIcon: Transform.scale(
                scale: 0.60,
                child: SvgPicture.asset(Assets.icons.profilemen, height: 24.h),
              ),
            ),
            UIHelper.verticalSpace(50.h),
            Center(
              child: UserSideCustomButton( text: 'Edit Profile',  onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

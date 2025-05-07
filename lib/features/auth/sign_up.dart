
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:wix_fivver/common_widget/custom_button.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController scrollController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  bool checkbox1 = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(150.h),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.only(
                      topLeft:  Radius.circular(40.r),
                      topRight: Radius.circular(40.r))),
              child: SingleChildScrollView(
                padding:
                EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70.w),
                      child: LinearPercentIndicator(
                        barRadius: Radius.circular(10.r),
                        width: MediaQuery.of(context).size.width - 199,
                        lineHeight: 11.0,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: AppColors.cD9D9D9,
                      ),
                    ),
                    UIHelper.verticalSpace(50.h),
                    Text("Create Your Account", style: TextFontStyle.headline14StyleMontserrat),
                    UIHelper.verticalSpace(10.h),
                    Text("Log in to continue managing your logistics",
                        style: TextFontStyle.headline14StyleMontserrat),
                    UIHelper.verticalSpace(20.h),
                    Text("Name",
                        style: TextFontStyle.headline14StyleMontserrat),
                    UIHelper.verticalSpace(7.h),

                    UserSideCustomTextFormField(
                      controller: nameController,
                     hintTxt: 'name',
                    ),
                    UIHelper.verticalSpace(15.h),
                    Text("Email ", style: TextFontStyle.headline14StyleMontserrat),
                    UIHelper.verticalSpace(7.h),
                    UserSideCustomTextFormField(
                      controller: emailController,
                     hintTxt: 'email',
                    ),
                    UIHelper.verticalSpace(15.h),
                    Text("Phone Number", style: TextFontStyle.headline14StyleMontserrat),
                    UIHelper.verticalSpace(7.h),
                    UserSideCustomTextFormField(
                      controller: phoneNumberController,
                    hintTxt: 'phone',
                    ),
                    UIHelper.verticalSpace(15.h),
                    Text("Password", style: TextFontStyle.headline14StyleMontserrat),
                    UIHelper.verticalSpace(7.h),


              UserSideCustomTextFormField(
                controller: phoneNumberController,
               hintTxt: 'phonenumber',
              ),
                    customeButton(
                        borderColor: Colors.transparent,
                        name: "Sign Up",
                        onCallBack: () {
                        },
                        height: 48.h,
                        minWidth: 342,
                        borderRadius: 40.r,
                        color: AppColors.c1C1F5E,
                        textStyle: TextFontStyle.headline24cFFFFFFpoppinsw600,
                        context: context),
                    UIHelper.verticalSpace(24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("You have an account?",style: TextFontStyle.headline14StyleMontserrat),
                        UIHelper.horizontalSpace(9.w),
                        GestureDetector(
                            onTap: (){

                            },
                            child: Text("Sign In",style: TextFontStyle.headline10cFF4931poppinsw400))
                      ],
                    ),
                    UIHelper.verticalSpace(24.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

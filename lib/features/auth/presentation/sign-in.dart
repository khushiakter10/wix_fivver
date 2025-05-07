import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/common_widget/custom_button.dart';
import 'package:wix_fivver/common_widget/validetor_custom_widget.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/all_routes.dart';
import 'package:wix_fivver/helpers/navigation_service.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool checkbox1 = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.profilegirl.path),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UIHelper.verticalSpace(380.h),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.c5F57FF,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40),
                        topRight: Radius.circular(40.r),
                      ),
                    ),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                          vertical: 18.0.h, horizontal: 20.w),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UIHelper.verticalSpace(50.h),

                            ValidetorCustomWidget(
                              controller: emailController,
                             labelText: 'email',
                             hintTxt: 'Email',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value) &&
                                    !RegExp(r'^\d{11}$').hasMatch(value)) {
                                  return 'Enter a valid email or phone number';
                                }
                                return null;
                              },
                            ),

                            UIHelper.verticalSpace(15.h),

                            UIHelper.verticalSpace(5.h),
                            ValidetorCustomWidget(
                              labelText: 'password',
                              hintTxt: 'password',
                              controller: passwordController,

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                            ),

                            UIHelper.verticalSpace(3.h),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 1.7,
                                  child: Checkbox(
                                    shape: OutlinedBorder.lerp(
                                        const RoundedRectangleBorder(),
                                        const CircleBorder(),
                                        0.33.r),
                                    side: const BorderSide(
                                        color: AppColors.primaryColor,
                                        width: 1),
                                    activeColor: AppColors.cFFFFFF,
                                    checkColor: AppColors.c000000,
                                    value: checkbox1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        checkbox1 = newValue!;
                                      });
                                    },
                                  ),
                                ),
                                Text("Remember me", style: TextFontStyle.headline14c94A3B8satoshiw600),
                                const Spacer(),
                                Text("Forgot password?", style: TextFontStyle .headline14c94A3B8satoshiw600),


                              ],
                            ),

                            UIHelper.verticalSpace(55.h),

                            customeButton(
                              borderColor: Colors.transparent,
                              name: "Log in",
                              onCallBack: () {
                                if (_formKey.currentState!.validate()) {
                                  NavigationService.navigateTo(Routes.signUpScreen);
                                }
                              },
                              height: 48.h,
                              minWidth: 342,
                              borderRadius: 40.r,
                              color: AppColors.c1C1F5E,
                              textStyle: TextFontStyle.headline24cFFFFFFpoppinsw600,
                              context: context,
                            ),


                            UIHelper.verticalSpace(30.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Didn’t have an account?",
                                    style: TextFontStyle
                                        .headline14StyleMontserrat),
                                UIHelper.horizontalSpace(9.w),
                                GestureDetector(
                                  onTap: () {
                                  NavigationService.navigateTo(Routes.signUpScreen);
                                  },
                                  child: Text("Sign Up",
                                      style: TextFontStyle
                                          .headline14StyleMontserrat),
                                ),
                              ],
                            ),

                            UIHelper.verticalSpace(24.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

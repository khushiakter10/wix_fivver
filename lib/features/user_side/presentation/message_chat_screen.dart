import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/features/user_side/presentation/widget/custom_design.dart';
import 'package:wix_fivver/features/user_side/presentation/widget/custom_divider.dart';
import 'package:wix_fivver/features/user_side/presentation/widget/custom_sent_message.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

class MessageChatScreen extends StatefulWidget {
  const MessageChatScreen({super.key});

  @override
  State<MessageChatScreen> createState() => _MessageChatScreenState();
}

class _MessageChatScreenState extends State<MessageChatScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( backgroundColor: AppColors.cFFFFFF,


      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        toolbarHeight: 90.h, // increased to accommodate divider
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding( padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.arrwleft, height: 24.h),
                  UIHelper.horizontalSpace(12.w),
                  CircleAvatar(
                    radius: 22.r,
                    backgroundImage: AssetImage(Assets.images.profilegirl.path),
                  ),
                  UIHelper.horizontalSpace(12.w),
                  Expanded(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text( 'Azunyan U. Wu',  style: TextFontStyle.headline16c1E293Bsatoshiw700),
                            UIHelper.horizontalSpace(8.w),

                            Container(padding:EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                              decoration: BoxDecoration(
                                color: AppColors.cF0FDF4,
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(color: AppColors.cBBF7D0, width: 2.w),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 6.w,
                                    height: 6.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.c22C55E,
                                    ),
                                  ),
                                  UIHelper.horizontalSpace(4.w),
                                  Text( 'Online',  style: TextFontStyle.headline12c2FED52satoshiw600),

                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(  '@azusanakano_1997', style: TextFontStyle.headline14c475569satoshiw500),
                      ],
                    ),
                  ),
                  PopupMenuButton<String>(
                    padding: EdgeInsets.zero,
                    offset: const Offset(0, 40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                    onSelected: (value) {
                      if (value == 'Option 1') {
                        // TODO: handle option 1
                      } else if (value == 'Option 2') {
                        // TODO: handle option 2
                      }
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 'Option 1',
                        child: Text('Report User'),
                      ),
                      const PopupMenuItem(
                        value: 'Option 2',
                        child: Text('Block User'),

                      ), const PopupMenuItem(
                        value: 'Option 3',
                        child: Text('khusi'),
                      ),
                    ],
                    child: SvgPicture.asset(
                      Assets.icons.doticon,
                      height: 48,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Divider(thickness: 11,color: AppColors.cE1E6EF,height: 1.h),
            UIHelper.verticalSpace(32.h),
            Text('19 August',style: TextFontStyle.headline14c94A3B8satoshiw600),
            UIHelper.verticalSpace(20.h),

            Container(padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.cE2E8F0,width: 1.w),
                borderRadius: BorderRadius.circular(16.r)
              ),
              child:Column(
                children: [
                  const Text('Hello my dear sir, I’m here do deliver the design requirement document for our next projects.'),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('10:25',style: TextFontStyle.headline14c475569satoshiw500.copyWith(fontSize: 12.sp)),
                     UIHelper.horizontalSpace(4.w),
                     SvgPicture.asset(Assets.icons.signutre,height: 16.h)
                    ],
                  )
                ],
              )



            ),
            UIHelper.verticalSpace(12.h),

            CustomDesign(title: 'Design_project_2025.docx', icon: SvgPicture.asset(Assets.icons.textmessag,height: 32.h), subtitle: '2,5gb  •  docx'),
            UIHelper.verticalSpace(12.h),

            /////////////////////////////////Gradien//////////////////////////////////////////

            Container(padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.cE2E8F0,width: 1.w),
                    borderRadius: BorderRadius.circular(16.r),
                  gradient:  const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                    AppColors.c12AEFF,
                    AppColors.c0B50FF,
                    ],
                  ),
                ),
                child:Column(
                  children: [
                     Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori',style: TextFontStyle.headline16cFFFFFFsatoshiw500.copyWith(fontSize: 14.sp)),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('10:25',style: TextFontStyle.headline14c475569satoshiw500.copyWith(fontSize: 12.sp)),
                        UIHelper.horizontalSpace(4.w),
                        SvgPicture.asset(Assets.icons.signutre,height: 16.h)
                      ],
                    )
                  ],
                )
                ),
            //////////////////////////////////Done//////////////////////////////////////////

            UIHelper.verticalSpace(4.h),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(Assets.icons.greensigneture),
                UIHelper.horizontalSpace(4.w),
                Text('Sent',style: TextFontStyle.headline12c475569satoshiw600)
              ],
            ),
            UIHelper.verticalSpace(20.h),
             const CustomDivider(text: 'Today'),
            UIHelper.verticalSpace(20.h),

            //////////////////////////////////////////////////////////////
            Container(padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.cE2E8F0,width: 1.w),
                    borderRadius: BorderRadius.circular(16.r)
                ),
                child:Column(
                  children: [
                     Text('Do androids truly dream of electric sheeps?',style: TextFontStyle.headline14c1E293Bsatoshiw500),
                    UIHelper.verticalSpace(4.h),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('10:25',style: TextFontStyle.headline14c475569satoshiw500.copyWith(fontSize: 12.sp)),
                        UIHelper.horizontalSpace(4.w),
                        SvgPicture.asset(Assets.icons.signutre,height: 16.h)
                      ],
                    )
                  ],
                )



            ),
            UIHelper.verticalSpace(12.h),

           Container(padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.cE2E8F0, width: 1.w),
                borderRadius: BorderRadius.circular(16.r)),
            child: Column(
              children: [
                Container(padding: EdgeInsets.symmetric(vertical: 74.h, horizontal: 32.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),

                  image:  DecorationImage(image: AssetImage(Assets.images.girlphoto.path),fit: BoxFit.cover)
                  ),
                ),
                UIHelper.verticalSpace(4.h),
                Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('10:25',style: TextFontStyle.headline14c475569satoshiw500 .copyWith(fontSize: 12.sp)),
                    UIHelper.horizontalSpace(4.w),
                    SvgPicture.asset(Assets.icons.signutre, height: 16.h)
                  ],
                ),
              ],
            )),

            UIHelper.verticalSpace(32.h),

            Row(
              children: [
                Container(padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.cE2E8F0,width: 1.w),
                        borderRadius: BorderRadius.circular(16.r)
                    ),
                    child: SvgPicture.asset(Assets.icons.threedort)



                ),
              ],
            ),
            UIHelper.verticalSpace(32.h),

            CustomSentMessage(icon:SvgPicture.asset(Assets.icons.message, height: 24.h), title: 'Send a message...')


          ],
        ),
      ),


    );
  }
}





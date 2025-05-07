import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

import 'chat_data_screen.dart';


class MessageChat extends StatefulWidget {
  const MessageChat({super.key});

  @override
  State<MessageChat> createState() => _MessageChatState();
}

class _MessageChatState extends State<MessageChat> {
  final List<String> chatImages = [
    'assets/images/charticon1.png',
    'assets/images/chart2.png',
    'assets/images/chart3.png',
    'assets/images/chart4.png',
    'assets/images/chart5.png',
    'assets/images/chart6.png',
    'assets/images/chart7.png',
  ];

  final List<String> chatNames = [
    'X-AE-A-13b',
    'Jerome White',
    'Madagascar Silver',
    'Pippins McGray',
    'McKinsey Vermillion',
    'Dorian F. Gray',
    'Benedict Combersmacks',
  ];

  final List<String> chatMessages = [
    'Enter your message description here...',
    'Enter your message description here...',
    'Enter your message description here...',
    'Enter your message description here...',
    'Enter your message description here...',
    'Enter your message description here...',
    'Enter your message description here...',
  ];

  final List<String> chatTimes = [
    '12:25',
    '12:25',
    '12:25',
    '12:25',
    '12:25',
    '12:25',
    '12:25',
  ];

  final List<bool> isOnlineStatus = [
    true,
    true,
    false,
    true,
    true,
    false,
    true,
  ];

  final List<int> unreadCounts = [
    0,
    0,
    999,
    0,
    8,
    0,
    0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Transform.scale(
            scale: 0.7,
            child: SvgPicture.asset(
              Assets.icons.chart,
              height: 32.h,
            ),
          ),
        ),
        title: Text(
          'My Chats',style: TextFontStyle.headline24c1E293Bpoppinsw700,

        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserSideCustomTextFormField(
              prefixIcon: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  Assets.icons.searchicon2,
                  height: 20.h,
                ),
              ),
              borderSide: BorderSide(color: AppColors.cCBD5E1, width: 2.w),
              borderRadius: BorderRadius.circular(123.r),
              contentPadding:
              EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
              hintTxt: 'Search...',
              hinStyle: TextFontStyle.headline16c475569poppinsw500,
            ),
            UIHelper.verticalSpace(16.h),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: chatImages.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatDataScreen(
                            name: chatNames[index],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 24.r,
                                backgroundImage:
                                AssetImage(chatImages[index]),
                              ),
                              if (isOnlineStatus[index])
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6.w, vertical: 6.h),
                                    decoration: BoxDecoration(
                                      color: AppColors.c22C55E,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColors.cFFFFFF,
                                        width: 2.w,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          UIHelper.horizontalSpace(12.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chatNames[index],
                                  style: TextFontStyle
                                      .headline16c1E293Bpoppinsw500,
                                ),
                                UIHelper.verticalSpace(4.h),
                                Text(
                                  chatMessages[index],
                                  style: TextFontStyle
                                      .headline16c475569poppinsw500
                                      .copyWith(fontSize: 14.sp),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                chatTimes[index],
                                style: TextFontStyle.headline16c94A3B8poppinsw700,
                              ),
                              UIHelper.verticalSpace(16.h),
                              if (unreadCounts[index] > 0)
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6.w, vertical: 2.h),
                                  decoration: BoxDecoration(
                                    color: AppColors.c4F46E5,
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Text(
                                    unreadCounts[index] > 99
                                        ? '99+'
                                        : unreadCounts[index].toString(),
                                    style: TextFontStyle
                                        .headline24cFFFFFFpoppinsw600
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Column(
                  children: [
                    UIHelper.verticalSpace(16.h),
                    UIHelper.customDivider(
                      height: 1.h,
                      color: AppColors.cE2E8F0,
                    ),
                    UIHelper.verticalSpace(16.h),
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

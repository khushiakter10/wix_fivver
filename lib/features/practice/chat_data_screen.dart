import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class ChatDataScreen extends StatefulWidget {
  final String name;
  const ChatDataScreen({super.key, required this.name});

  @override
  State<ChatDataScreen> createState() => _ChatDataScreenState();
}

class _ChatDataScreenState extends State<ChatDataScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  List<Map<String, dynamic>> messages = [
    {'text': 'Hello!', 'isUser': false},
    {'text': 'Hi, how are you?', 'isUser': true},
  ];

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        messages.add({'text': text, 'isUser': false});
        // Simulated user reply after your message
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            messages.add({'text': 'Thanks for your message!', 'isUser': true});
          });
          _scrollToBottom();
        });
      });
      _messageController.clear();
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        toolbarHeight: 90.h,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(Assets.icons.arrwleft, height: 24.h),
                  ),
                  UIHelper.horizontalSpace(12.w),
                  CircleAvatar(
                    radius: 22.r,
                    backgroundImage:
                    AssetImage(Assets.images.profilegirl.path),
                  ),
                  UIHelper.horizontalSpace(12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.name,
                              style:
                              TextFontStyle.headline16c1E293Bsatoshiw700,
                            ),
                            UIHelper.horizontalSpace(8.w),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 4.h),
                              decoration: BoxDecoration(
                                color: AppColors.cF0FDF4,
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                    color: AppColors.cBBF7D0, width: 2.w),
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
                                  Text('Online',
                                      style: TextFontStyle
                                          .headline12c2FED52satoshiw600),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text('@azusanakano_1997',
                            style: TextFontStyle.headline14c475569satoshiw500),
                      ],
                    ),
                  ),
                  PopupMenuButton<String>(
                    padding: EdgeInsets.zero,
                    offset: const Offset(0, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r)),
                    onSelected: (value) {},
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 'Option 1',
                        child: Text('Report User'),
                      ),
                      const PopupMenuItem(
                        value: 'Option 2',
                        child: Text('Block User'),
                      ),
                      const PopupMenuItem(
                        value: 'Option 3',
                        child: Text('Other'),
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                final isUser = msg['isUser'] as bool;
                return Align(
                  alignment:
                  isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 6.h),
                    padding:
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                    constraints: BoxConstraints(maxWidth: 250.w),
                    decoration: BoxDecoration(
                      color: isUser
                          ? AppColors.c5F57FF
                          : AppColors.primaryColor, // different colors
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text(
                      msg['text'],
                      style: TextFontStyle.headline10cFF4931poppinsw400,
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(height: 1, color: AppColors.cE2E8F0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      hintStyle:
                      TextFontStyle.headline10cFF4931poppinsw400,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 14.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.r),
                        borderSide: const BorderSide(color: AppColors.cCBD5E1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.r),
                        borderSide: const BorderSide(color: AppColors.cCBD5E1),
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpace(8.w),
                GestureDetector(
                  onTap: _sendMessage,
                  child: const CircleAvatar(
                    backgroundColor: AppColors.c4F46E5,
                    child: Icon(Icons.send, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

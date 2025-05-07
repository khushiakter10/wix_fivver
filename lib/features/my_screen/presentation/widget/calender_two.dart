import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';



class CustomCalendarWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Function(String) onDateSelected;

  const CustomCalendarWidget({
    super.key,
    required this.hintText,
    required this.controller,
    required this.onDateSelected,
  });

  @override
  State<CustomCalendarWidget> createState() => _CustomCalendarWidgetState();
}

class _CustomCalendarWidgetState extends State<CustomCalendarWidget> {
  void _openCalendarTimeline() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime(1950, 1, 1),
                lastDate: DateTime(2100, 12, 31),
                onDateSelected: (date) {
                  final selected = "${date.day}/${date.month}/${date.year}";
                  setState(() {
                    widget.controller.text = selected;
                  });
                  widget.onDateSelected(selected);
                  Navigator.pop(context);
                },
                leftMargin: 20,
                monthColor: AppColors.c607080,
                dayColor: AppColors.primaryColor,
                activeDayColor: AppColors.cFFFFFF,
                activeBackgroundDayColor: AppColors.primaryColor,
                selectableDayPredicate: (date) => true,
              ),
              UIHelper.verticalSpace(10.h),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return UserSideCustomTextFormField(
      controller: widget.controller,
      hintTxt: widget.hintText,
      hinStyle: TextFontStyle.headline14c607080satoshiw400,
      readOnly: true,
      suffixIcon: GestureDetector(
        onTap: _openCalendarTimeline,
        child: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: Transform.scale(
            scale: 0.6,
            child: SvgPicture.asset(
              Assets.icons.calender2,
              height: 18.h,
            ),
          ),
        ),
      ),
    );
  }
}

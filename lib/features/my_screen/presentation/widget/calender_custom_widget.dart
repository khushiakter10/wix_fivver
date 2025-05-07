import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class CalenderCustomWidget extends StatefulWidget {
  final String text;
  final TextEditingController controller;

  const CalenderCustomWidget({
    super.key,
    required this.controller,
    required this.text,
  });

  @override
  State<CalenderCustomWidget> createState() => _CalenderCustomWidgetState();
}

class _CalenderCustomWidgetState extends State<CalenderCustomWidget> {
  bool _showCalendar = false;
  DateTime _selectedDate = DateTime.now();

  void _toggleCalendar() {
    setState(() {
      _showCalendar = !_showCalendar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          children: [


            Expanded(
              child: UserSideCustomTextFormField(
                controller: widget.controller,
                hintTxt: 'Date of Birth*',
                hinStyle: TextFontStyle.headline14c607080satoshiw400,
                readOnly: true,
                suffixIcon: GestureDetector(
                  onTap: _toggleCalendar,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Transform.scale(
                      scale: 0.6,
                      child: SvgPicture.asset(
                        Assets.icons.calender2,
                        height: 20.h,
                      ),
                    ),
                  ),
                ),
                onTap: _toggleCalendar,
              ),
            ),
            UIHelper.horizontalSpace(11),

            Expanded(
              child: UserSideCustomTextFormField(
                controller: widget.controller,
                hintTxt: 'Date of Birth*',
                hinStyle: TextFontStyle.headline14c607080satoshiw400,
                readOnly: true,
                suffixIcon: GestureDetector(
                  onTap: _toggleCalendar,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Transform.scale(
                      scale: 0.6,
                      child: SvgPicture.asset(
                        Assets.icons.calender2,
                        height: 20.h,
                      ),
                    ),
                  ),
                ),
                onTap: _toggleCalendar,
              ),
            ),

          ],
        ),

        if (_showCalendar)
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: CalendarTimeline(
                    showYears: true,
                    initialDate: _selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    onDateSelected: (date) {
                      setState(() {
                        _selectedDate = date;
                        widget.controller.text =
                            DateFormat('yyyy-MM-dd').format(date);
                        _showCalendar = false;
                      });
                    },
                    leftMargin: 10,
                    monthColor: Colors.blueGrey,
                    dayColor: Colors.teal[200],
                    activeDayColor: Colors.white,
                    activeBackgroundDayColor: Colors.redAccent,
                    locale: 'en',
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

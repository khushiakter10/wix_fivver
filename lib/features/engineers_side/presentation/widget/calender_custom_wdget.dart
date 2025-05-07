import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
class CustomCalendarField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomCalendarField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<CustomCalendarField> createState() => _CustomCalendarFieldState();
}

class _CustomCalendarFieldState extends State<CustomCalendarField> {
  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      final selectedDate = "${picked.day}/${picked.month}/${picked.year}";
      setState(() {
        widget.controller.text = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectDate,
      child: AbsorbPointer(
        child: UserSideCustomTextFormField(
          controller: widget.controller,
          hintTxt: widget.hintText,
          suffixIcon: Transform.scale(
            scale: 0.5,
            child: SvgPicture.asset(
              Assets.icons.calender2,
              height: 20.h,
            ),
          ),
        ),
      ),
    );
  }
}

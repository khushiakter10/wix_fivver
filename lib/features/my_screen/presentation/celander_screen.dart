import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/features/my_screen/presentation/widget/calender_custom_widget.dart';
import 'package:wix_fivver/features/my_screen/presentation/widget/calender_two.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class CelanderScreen extends StatefulWidget {
  const CelanderScreen({super.key});

  @override
  State<CelanderScreen> createState() => _CelanderScreenState();
}

class _CelanderScreenState extends State<CelanderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(100.h),

          CustomCalendarWidget(hintText: 'Date of Birth*', controller: TextEditingController(), onDateSelected: (String ) {  },),
          CalenderCustomWidget(controller:  TextEditingController(), text: 'khusi',),
          CalenderCustomWidget(controller:  TextEditingController(), text: 'khusi',),
        ],
      ),
    );
  }
}

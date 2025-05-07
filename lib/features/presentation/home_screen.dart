import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/features/presentation/Widget/custom_container_addition.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = -1;

  List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri      ', 'Sat', 'Sun'];
  List<String> dates = ['8', '9', '10', '11', '12', '13', '14'];

  final List<String> image = [
    'assets/images/additionimage.png',
    'assets/images/cleaning.png',
    'assets/images/heating.png',
    'assets/images/plume.png',
    'assets/images/electrical.png',
  ];

  final List<String> text = [
    'Addition & Remodeling',
    'Cleaning',
    'Heating',
    'Plumbing',
    'Electrical',
  ];

  DateTime? selectedDate;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( 'Hello, Wingman!',  style: TextFontStyle.headline18textc212738poppinsw700),
                      UIHelper.verticalSpace(6.h),

                      Text(  'Welcome, What service you need today!',    style: TextFontStyle.headline11textc878A94poppinsw500),

                      UIHelper.verticalSpace(6.h),
                      Text( '60 WESTBURY HILL, WESTBURY ON TRYM',  style: TextFontStyle.headline12textc2563FFpoppinsw500),

                    ],
                  ),
                ),
                SvgPicture.asset(Assets.icons.notificationbutton),
              ],
            ),
            UIHelper.verticalSpace(14.h),
            SizedBox(
              height: 70.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 8.w),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.c1A1F0A
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              days[index],
                              style: TextFontStyle
                                  .headline12textc898989poppinsw500
                                  .copyWith(
                                color: isSelected
                                    ? Colors.white
                                    : AppColors.c898989,
                              ),
                            ),
                            UIHelper.verticalSpace(6.h),
                            Text(
                              dates[index],
                              style: TextFontStyle
                                  .headline12textc898989poppinsw500
                                  .copyWith(
                                color: isSelected
                                    ? Colors.white
                                    : AppColors.c898989,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            UIHelper.verticalSpace(24.h),
            Text(
              'Services',
              style: TextFontStyle.headline18textc212738poppinsw700,
            ),
            UIHelper.verticalSpace(16.h),
            CustomContainerAddition(
              image: image,
              text: text,
            ),
            UIHelper.verticalSpace(34.h),
          ],
        ),
      ),
      // bottomNavigationBar: SizedBox(
      //   height: 250.h,
      //   child: CustomBoilerFixing(
      //     text: 'Boiler Fixing',
      //     texttwo: 'Urgent',
      //     textthree: 'Location',
      //     onTapCalendar: _pickDate,
      //     selectedDate: selectedDate != null
      //         ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
      //         : 'Select Date',
      //   ),
      // ),
    );
  }
}

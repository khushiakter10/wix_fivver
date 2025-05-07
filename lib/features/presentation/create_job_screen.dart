import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/common_widget/user_side_custom_button.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

class CreateJobScreen extends StatefulWidget {
  const CreateJobScreen({super.key});

  @override
  State<CreateJobScreen> createState() => _CreateJobScreenState();
}

class _CreateJobScreenState extends State<CreateJobScreen> {

  bool _showDropdown = false;
  String selectedValue = '';

  List<String> options = [
  "Property A",
  "Property B",
  "Property C",
  ];
  TextEditingController dateController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

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
              Text(
                "Select your birth date",
                style: TextFontStyle.headline10cFF4931poppinsw400,
              ),
              UIHelper.verticalSpace(10.h),
              CalendarTimeline(
                initialDate: _selectedDate,
                firstDate: DateTime(1950, 1, 1),
                lastDate: DateTime(2100, 12, 31),
                onDateSelected: (date) {
                  setState(() {
                    _selectedDate = date;
                    dateController.text = "${date.year}-${date.month}-${date.day}";
                  });
                  Navigator.pop(context); // Dialog close
                },
                leftMargin: 20,
                monthColor: AppColors.c607080,
                dayColor:  AppColors.primaryColor,
                activeDayColor:  AppColors.cFFFFFF,
                activeBackgroundDayColor:  AppColors.primaryColor,
                selectableDayPredicate: (date) => true,
              ),
              UIHelper.verticalSpace(10.h),
            ],
          ),
        ),
      ),
    );
  }
  //////////////Radio////////////////////////

  String selectedOption = 'Male';

  void _handleRadioValueChange(String? value) {
    if (value != null) {
      setState(() {
        selectedOption = value;
      });
    }
  }
//////////////////////done//////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        leading: Transform.scale(
          scale: 0.60,
          child: SvgPicture.asset(
            Assets.icons.cross,
            height: 24.h,
          ),
        ),
        title: Text(
          'Create Job',
          style: TextFontStyle.headline20c132234satoshiw700,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(12.h),
          child: Column(
            children: [
              UIHelper.verticalSpace(8.h),
              Divider(
                color: AppColors.cF0F5FA,
                thickness: 11,
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(24.h),
            //////////////////////////Divider///////////////////////////////
            Row(
              children: [
                Expanded(
                  child: UIHelper.customDivider(
                    height: 1.h,
                    color: AppColors.cE1E6EF,
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Text(
                  'Property Information',
                  style: TextFontStyle.headline12c607080satoshiw500,
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: UIHelper.customDivider(
                    height: 2,
                    color: AppColors.cE1E6EF,
                  ),
                ),
              ],
            ),
            //////////////////////////Done///////////////////////////////
            UIHelper.verticalSpace(20.h),
            Text(
              'Property*',
              style: TextFontStyle.headline12c132234satoshiw700,
            ),
            UIHelper.verticalSpace(4.h),

            ////////////////////////////////////Property//////////////////////////////////
            UserSideCustomTextFormField(hintTxt: selectedValue.isEmpty ? '-- Select property --' : selectedValue,
              hinStyle: TextFontStyle.headline14c607080satoshiw400,
              readOnly: true,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _showDropdown = !_showDropdown;
                  });
                },
                child: Transform.scale(
                  scale: 0.5,
                  child: SvgPicture.asset(
                    Assets.icons.cityicon,
                    height: 20.h,
                  ),
                ),
              ),
            ),
            if (_showDropdown) ...[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.cE1E6EF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: options.map((item) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedValue = item;
                          _showDropdown = false;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Text(
                          item,
                          style: TextFontStyle.headline14c607080satoshiw400,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
            ////////////////////////////////////done//////////////////////////////////

            UIHelper.verticalSpace(24.h),
            Divider(
              color: AppColors.cF0F5FA,
              thickness: 11,
              height: 2.h,
            ),
            UIHelper.verticalSpace(24.h),
            //////////////////////////Divider///////////////////////////////
            Row(
              children: [
                Expanded(
                  child: UIHelper.customDivider(
                    height: 2,
                    color: AppColors.cE1E6EF,
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Text(
                  'BASIC DETAILS',
                  style: TextFontStyle.headline12c607080satoshiw500,
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: UIHelper.customDivider(
                    height: 1.h,
                    color: AppColors.cE1E6EF,
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            //////////////////////////Done///////////////////////////////
            Text(
              'Job Title*',
              style: TextFontStyle.headline12c132234satoshiw700,
            ),
            UIHelper.verticalSpace(4.h),

            UserSideCustomTextFormField(
              hintTxt: 'Enter job title',
              hinStyle: TextFontStyle.headline14c607080satoshiw400,
            ),
            UIHelper.verticalSpace(20.h),
            Text(
              'Job Description*',
              style: TextFontStyle.headline12c132234satoshiw700,
            ),
            UIHelper.verticalSpace(4.h),
            UserSideCustomTextFormField(
              hintTxt: 'Enter job description',hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(20.h),
            Text('Preferred Visit Date & Time*',style: TextFontStyle.headline12c132234satoshiw700),

            UIHelper.verticalSpace(4.h),
   ///////////////////////////////Calender//////////////////////////////////////////////
            UserSideCustomTextFormField(
              controller: dateController,
              hintTxt: 'Select birth of date',
              hinStyle: TextFontStyle.headline14c607080satoshiw400,
              readOnly: true,
              onTap: () {
                FocusScope.of(context).unfocus();
                _openCalendarTimeline();
              },
              suffixIcon: GestureDetector(
                onTap: _openCalendarTimeline,
                child: Transform.scale(
                  scale: 0.50,
                  child: SvgPicture.asset(
                    Assets.icons.calender2,
                    height: 20.h,
                  ),
                ),
              ),
            ),
   /////////////////////////////////Done/////////////////////////////////////////////
            UIHelper.verticalSpace(24.h),
            Divider(
              color: AppColors.cF0F5FA,
              thickness: 11,
              height: 2.h,
            ),
            UIHelper.verticalSpace(24.h),
            /////////////////////////////////Divider///////////////////////
            Row(
              children: [
                Expanded(
                  child: UIHelper.customDivider(
                    height: 1.h,
                    color: AppColors.cE1E6EF,
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Text(
                  'Boiler Information',
                  style: TextFontStyle.headline12c607080satoshiw500,
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: UIHelper.customDivider(
                    height: 2,
                    color: AppColors.cE1E6EF,
                  ),
                ),
              ],
            ),
            ///////////////////////////////done////////////////////////
            UIHelper.verticalSpace(20.h),
            Text('Error Codes Displayed', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            UserSideCustomTextFormField(
                hintTxt: 'Enter error code',hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(8.h),

/////////////////////////////////Dottet border///////////////////////////////
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: DottedBorder(
                color:  AppColors.c94A3B3,
                strokeWidth: 1.5,
                dashPattern: const [6, 4],
                borderType: BorderType.RRect,
                radius: Radius.circular(12.r),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  decoration: BoxDecoration(color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                          backgroundColor: AppColors. cF0F5FF,
                          radius: 30.r,
                          child: SvgPicture.asset(
                              Assets.icons.gallry,
                              height: 24.h)),
                      UIHelper.verticalSpace(12.h),
                      Text( 'Click to Upload Error Codes Displayed',  style: TextFontStyle.headline16c010B21poppinsw500, textAlign: TextAlign.center),
                      UIHelper.verticalSpace(4.h),
                      Text(  '(Max. File size: 25 MB)',style: TextFontStyle.headline14c607080satoshiw400 .copyWith(fontSize: 12.sp),textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
/////////////////////////////////Done/////////////////////////////////////////
            UIHelper.verticalSpace(20.h),

            Text('Water Pressure Level*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),

            UserSideCustomTextFormField(hintTxt: selectedValue.isEmpty ? '-- Select pressure level --' : selectedValue,
              hinStyle: TextFontStyle.headline14c607080satoshiw400,
              readOnly: true,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _showDropdown = !_showDropdown;
                  });
                },
                child: Transform.scale(
                  scale: 0.5,
                  child: SvgPicture.asset(
                    Assets.icons.cityicon,
                    height: 20.h,
                  ),
                ),
              ),
            ),
            if (_showDropdown) ...[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.cE1E6EF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: options.map((item) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedValue = item;
                          _showDropdown = false;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Text(
                          item,
                          style: TextFontStyle.headline14c607080satoshiw400,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
            UIHelper.verticalSpace(24.h),

            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            UIHelper.verticalSpace(24.h),
            ///////////////////////////Divider////////////////////////////////
            Row(
              children: [
                Expanded(
                  child: UIHelper.customDivider(
                    height: 2,
                    color: AppColors.cE1E6EF,
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Text(
                  'Additional Information',
                  style: TextFontStyle.headline12c607080satoshiw500,
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: UIHelper.customDivider(
                    height: 1.h,
                    color: AppColors.cE1E6EF,
                  ),
                ),
              ],
            ),
            ///////////////////////////Done////////////////////////////////
            UIHelper.verticalSpace(20.h),
            Text('Tools*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
///////////////////////////Radio//////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio<String>(
                        value: 'Male',
                        groupValue: selectedOption,
                        onChanged: _handleRadioValueChange,
                        activeColor: AppColors.c0048FF
                    ),
                    Text('Yes',style: TextFontStyle.headline15c132234poppinsw400),
                  ],
                ),
                UIHelper.horizontalSpace(15.w),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Female',
                      groupValue: selectedOption,
                      onChanged: _handleRadioValueChange,
                      activeColor: AppColors.c0048FF,
                    ),
                    Text('No',style: TextFontStyle.headline15c132234poppinsw400),
                  ],
                ),
              ],
            ),
///////////////////////////Done//////////////////////////////////
            UIHelper.verticalSpace(12.h),
            UserSideCustomTextFormField(
              contentPadding: EdgeInsets.symmetric(vertical: 27.h,horizontal: 13.w),
                hintTxt: 'Write here...',hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(20.h),
            Text('Additional Notes*', style: TextFontStyle.headline12c132234satoshiw700),

            UIHelper.verticalSpace(4.h),
            UserSideCustomTextFormField(
                contentPadding: EdgeInsets.symmetric(vertical: 27.h,horizontal: 13.w),
                hintTxt: 'Write here...',hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(24.h),
            Divider(color: AppColors.cF0F5FA, thickness: 11, height: 2.h),
            UIHelper.verticalSpace(24.h),
            Row(
              children: [
                Expanded(
                  child: UIHelper.customDivider(
                    height: 2,
                    color: AppColors.cE1E6EF,
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Text( 'Attachments',style: TextFontStyle.headline12c607080satoshiw500),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: UIHelper.customDivider(
                    height: 1.h,
                    color: AppColors.cE1E6EF,
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Text('Photos*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            /////////////////////////////////////Dotter////////////////////
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: DottedBorder(
                color:  AppColors.c94A3B3,
                strokeWidth: 1.5,
                dashPattern: const [6, 4],
                borderType: BorderType.RRect,
                radius: Radius.circular(12.r),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  decoration: BoxDecoration(color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                          backgroundColor: AppColors. cF0F5FF,
                          radius: 30.r,
                          child: SvgPicture.asset(
                              Assets.icons.gallry,
                              height: 24.h)),
                      UIHelper.verticalSpace(12.h),
                      Text( 'Click to Upload ',  style: TextFontStyle.headline16c010B21poppinsw500, textAlign: TextAlign.center),
                      UIHelper.verticalSpace(4.h),
                      Text(  '(Max. File size: 25 MB)',style: TextFontStyle.headline14c607080satoshiw400 .copyWith(fontSize: 12.sp),textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /////////////////////////////////////Done////////////////////
            UIHelper.verticalSpace(20.h),
            Text('Videos', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            /////////////////////////////////////Dotter////////////////////
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: DottedBorder(
                color:  AppColors.c94A3B3,
                strokeWidth: 1.5,
                dashPattern: const [6, 4],
                borderType: BorderType.RRect,
                radius: Radius.circular(12.r),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  decoration: BoxDecoration(color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                          backgroundColor: AppColors. cF0F5FF,
                          radius: 30.r,
                          child: SvgPicture.asset(
                              Assets.icons.gallry,
                              height: 24.h)),
                      UIHelper.verticalSpace(12.h),
                      Text( 'Click to Upload ',  style: TextFontStyle.headline16c010B21poppinsw500, textAlign: TextAlign.center),
                      UIHelper.verticalSpace(4.h),
                      Text(  '(Max. File size: 25 MB)',style: TextFontStyle.headline14c607080satoshiw400 .copyWith(fontSize: 12.sp),textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /////////////////////////////////////Done////////////////////
            UIHelper.verticalSpace(24.h),

            UserSideCustomButton(text: 'Post job', onTap: () {  },)
          ],
        ),
      ),
    );
  }
}

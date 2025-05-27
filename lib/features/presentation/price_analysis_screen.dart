import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/features/presentation/Widget/custom_city_widget.dart';
import 'package:wix_fivver/features/presentation/Widget/custom_divider_widget.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';
import 'Widget/custom_select_boyler_number.dart';





class PriceAnalysisScreen extends StatefulWidget {
  const PriceAnalysisScreen({super.key});

  @override
  State<PriceAnalysisScreen> createState() => _PriceAnalysisScreenState();
}

class _PriceAnalysisScreenState extends State<PriceAnalysisScreen> {

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

  String selectedCountryName = '-- Select country --';
  String selectedCityName = '-- Select city --';
  String selectedBoilerType = '-- Select boiler type --';
  final TextEditingController _dateController = TextEditingController();

  void _openCountryPickerDialog() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        setState(() {
          selectedCountryName = country.name;
        });
      },
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        _dateController.text =
        "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}";
      });
    }
  }

  void _navigateToCityScreen() async {
    final selectedCity = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CityListScreen(text: ''),
      ),
    );

    if (selectedCity != null && selectedCity is String) {
      setState(() {
        selectedCityName = selectedCity;
      });
    }
  }

  void _navigateToBoilerTypeScreen() async {
    final selectedBoiler = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CustomSelectBoylerNumber(text: '-- Select boiler type --'),
      ),
    );

    if (selectedBoiler != null && selectedBoiler is String) {
      setState(() {
        selectedBoilerType = selectedBoiler;
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF0F5FA,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.cF0F5FA,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Transform.scale(
            scale: 0.80,
            child: SvgPicture.asset(
              Assets.icons.arrw,
              height: 24.h,
            ),
          ),
        ),
        title: Text( 'Add Card',  style: TextFontStyle.headline20c132234satoshiw700)),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDividerWidget(text: 'Services'),
            UIHelper.verticalSpace(20.h),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: image.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.w,
                  mainAxisSpacing: 8.h,
                  childAspectRatio: 0.97),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                  decoration: BoxDecoration(
                    color: AppColors.cF3F3F4,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        image[index],
                        height: 24.h,
                      ),
                      Text(
                        text[index],
                        style: TextFontStyle.headline14c676C75poppinsw500,
                      ),
                    ],
                  ),
                );
              },
            ),
            UIHelper.verticalSpace(24.h),
             const CustomDividerWidget(text: 'Location Information'),
            UIHelper.verticalSpace(20.h),
            Text('Street Address*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
             const UserSideCustomTextFormField(hintTxt: 'Enter street address'),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Apartment / Suite / Unit*', style: TextFontStyle.headline12c132234satoshiw700),
                      UIHelper.verticalSpace(4),
                       const UserSideCustomTextFormField(hintTxt: 'Enter apartment...'),
                    ],
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('State / Province / Region*', style: TextFontStyle.headline12c132234satoshiw700),
                      UIHelper.verticalSpace(4),
                       const UserSideCustomTextFormField(hintTxt: 'Enter state...'),
                    ],
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('City*', style: TextFontStyle.headline12c132234satoshiw700),
                      UIHelper.verticalSpace(4),
                      GestureDetector(
                        onTap: _navigateToCityScreen,
                        child: AbsorbPointer(
                          child: UserSideCustomTextFormField(
                            hintTxt: selectedCityName,
                            suffixIcon: Transform.scale(
                              scale: 0.5,
                              child: SvgPicture.asset(Assets.icons.cityicon, height: 20.h),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Postal / ZIP Code*', style: TextFontStyle.headline12c132234satoshiw700),
                      UIHelper.verticalSpace(4),
                      const UserSideCustomTextFormField(hintTxt: 'Enter postal..'),
                    ],
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Text('Country*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            GestureDetector(
              onTap: _openCountryPickerDialog,
              child: AbsorbPointer(
                child: UserSideCustomTextFormField(
                  hintTxt: selectedCountryName,
                  suffixIcon: Transform.scale(
                    scale: 0.5,
                    child: SvgPicture.asset(Assets.icons.cityicon, height: 20.h),
                  ),
                ),
              ),
            ),
            UIHelper.verticalSpace(20.h),
            const CustomDividerWidget(text: 'Boiler Information'),
            UIHelper.verticalSpace(20.h),
            Text('Boiler Type*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),

            GestureDetector(
              onTap: _navigateToBoilerTypeScreen,
              child: AbsorbPointer(
                child: UserSideCustomTextFormField(
                  hintTxt: selectedBoilerType,
                  suffixIcon: Transform.scale(
                    scale: 0.5,
                    child: SvgPicture.asset(Assets.icons.cityicon, height: 20.h),
                  ),
                ),
              ),
            ),
            UIHelper.verticalSpace(20.h),
            Text('Brand & Model*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            const UserSideCustomTextFormField(hintTxt: 'Enter brand & model'),
            UIHelper.verticalSpace(20.h),
            Text('Number of Boilers*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            const UserSideCustomTextFormField(hintTxt: '-- Select boiler number --'),
            UIHelper.verticalSpace(20.h),



            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Age of Boiler*', style: TextFontStyle.headline12c132234satoshiw700),
                      UIHelper.verticalSpace(4),
                      const UserSideCustomTextFormField(hintTxt: 'Enter boiler age'),
                    ],
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Last Serviced Date*', style: TextFontStyle.headline12c132234satoshiw700),
                      UIHelper.verticalSpace(4),

                      GestureDetector(
                        onTap: _selectDate,
                        child: AbsorbPointer(
                          child: UserSideCustomTextFormField(
                            controller: _dateController,
                            hintTxt: 'DD/MM/YYYY',
                            suffixIcon: Transform.scale(
                              scale: 0.5,
                              child: SvgPicture.asset(Assets.icons.calender2, height: 20.h),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),


            UIHelper.verticalSpace(20.h),
            Text('Boiler Location*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            const UserSideCustomTextFormField(hintTxt: 'Enter boiler location'),
            UIHelper.verticalSpace(24.h),
            const CustomDividerWidget(text: 'Property Information'),
            UIHelper.verticalSpace(20.h),
            Text('Property Type*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            const UserSideCustomTextFormField(hintTxt: 'Enter property type'),
            UIHelper.verticalSpace(20.h),
            Text('Accessibility Info*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            const UserSideCustomTextFormField(hintTxt: 'Enter accessibility info'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:country_picker/country_picker.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';


class IntelPhoneTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const IntelPhoneTextFormField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  State<IntelPhoneTextFormField> createState() => _IntelPhoneTextFormFieldState();
}

class _IntelPhoneTextFormFieldState extends State<IntelPhoneTextFormField> {
  Country _selectedCountry = Country.parse('US');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.cE1E6EF),
      ),
      child: Row(
        children: [
          Padding(padding:  EdgeInsets.only(right: 8.r),
            child: Text(
              _selectedCountry.flagEmoji,style:  TextFontStyle.headline14c607080satoshiw400)),
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              keyboardType: TextInputType.phone,
              onChanged: widget.onChanged,
              style: TextFontStyle.headline14StyleMontserrat,
              decoration: InputDecoration(
                hintText: _selectedCountry.phoneCode,
                hintStyle: TextFontStyle.headline14c607080satoshiw400,
                border: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showCountryPicker(
                context: context,
                showPhoneCode: true,
                onSelect: (Country country) {
                  setState(() {
                    _selectedCountry = country;
                  });
                },
              );
            },
            child: SvgPicture.asset(Assets.icons.drowpbuttton,height: 18.h),
          ),
        ],
      ),
    );
  }
}

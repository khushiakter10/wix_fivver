import 'package:flutter/material.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class UserSideCustomDropdown extends StatefulWidget {
  final List<String> options;
  final Widget suffixIcon;
  final Function(String) onChanged;

  const UserSideCustomDropdown({
    super.key,
    required this.options,
    required this.suffixIcon,
    required this.onChanged,
  });

  @override
  State<UserSideCustomDropdown> createState() => _UserSideCustomDropdownState();
}

class _UserSideCustomDropdownState extends State<UserSideCustomDropdown> {
  bool _showDropdown = false;
  String _selectedValue = '';

  void _toggleDropdown() {
    setState(() {
      _showDropdown = !_showDropdown;
    });
  }

  void _selectItem(String value) {
    setState(() {
      _selectedValue = value;
      _showDropdown = false;
    });
    widget.onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserSideCustomTextFormField(
          hintTxt: _selectedValue.isEmpty ? '-- Select property --' : _selectedValue,
          hinStyle: TextFontStyle.headline14c607080satoshiw400,
          readOnly: true,
          suffixIcon: GestureDetector(
            onTap: _toggleDropdown,
            child: widget.suffixIcon,
          ),
        ),
        if (_showDropdown) ...[
          UIHelper.verticalSpace(6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.cE1E6EF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.options.map((item) {
                return GestureDetector(
                  onTap: () => _selectItem(item),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
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
      ],
    );
  }
}

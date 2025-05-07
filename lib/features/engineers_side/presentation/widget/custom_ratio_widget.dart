import 'package:flutter/material.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';

class CustomRatioWidget extends StatefulWidget {
  final String? option1;
  final String? option2;
  final String? option3;
  final String? option4;
  final String? option5;
  final String? option6;

  const CustomRatioWidget({
    super.key,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.option5,
    this.option6,
  });

  @override
  State<CustomRatioWidget> createState() => _CustomRatioWidgetState();
}

class _CustomRatioWidgetState extends State<CustomRatioWidget> {
  String? selectedOption;

  void _handleRadioValueChange(String? value) {
    if (value != null) {
      setState(() {
        selectedOption = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          if (widget.option1 != null) ...[
            _buildRadioOption(widget.option1!),
            UIHelper.horizontalSpace(10),
          ],
          if (widget.option2 != null) ...[
            _buildRadioOption(widget.option2!),
            UIHelper.horizontalSpace(10),
          ],
          if (widget.option3 != null) ...[
            _buildRadioOption(widget.option3!),
            UIHelper.horizontalSpace(10),
          ],
          if (widget.option4 != null) ...[
            _buildRadioOption(widget.option4!),
            UIHelper.horizontalSpace(10),
          ],
          if (widget.option5 != null) ...[
            _buildRadioOption(widget.option5!),
            UIHelper.horizontalSpace(10),
          ],
          if (widget.option6 != null) ...[
            _buildRadioOption(widget.option6!),
          ],
        ],
      ),
    );
  }

  Widget _buildRadioOption(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: selectedOption,
          onChanged: _handleRadioValueChange,
          activeColor: AppColors.c0048FF,
        ),
        Text(value, style: TextFontStyle.headline15c132234poppinsw400),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';


class ValidetorCustomWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final String? hintTxt;
  final String? labelText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final Widget? prefixIcon;
  final TextStyle? hinStyle;
  final TextStyle? labelTextStyle;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool? readOnly;
  final Color? fillColor;
  final bool? filled;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final String? helperText;
  final TextStyle? helperStyle;
  final String? counterText;
  final TextStyle? counterStyle;
  final TextStyle? errorStyle;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? isDense;
  final BorderSide? borderSide;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;

  const ValidetorCustomWidget({
    super.key,
    this.textStyle,
    this.controller,
    this.hintTxt,
    this.labelText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.border,
    this.errorBorder,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.readOnly,
    this.fillColor,
    this.filled,
    this.borderRadius,
    this.hinStyle,
    this.labelTextStyle,
    this.contentPadding,
    this.helperText,
    this.helperStyle,
    this.counterText,
    this.counterStyle,
    this.errorStyle,
    this.floatingLabelBehavior,
    this.isDense,
    this.borderSide,
    this.onTap,
    this.validator,
    this.keyboardType,
    this.obscureText,
    this.textInputAction,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly ?? false,
      onTap: onTap,
      style: textStyle,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      textInputAction: textInputAction,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintTxt ?? '',
        hintStyle: hinStyle ?? TextFontStyle.headline14StyleMontserrat,
        labelText: labelText,
        labelStyle:
        labelTextStyle ?? TextFontStyle.headline14c607080satoshiw400,
        fillColor: fillColor ?? AppColors.cFFFFFF,
        filled: filled ?? true,
        contentPadding:
        contentPadding ?? EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
        helperText: helperText,
        helperStyle: helperStyle,
        counterText: counterText,
        counterStyle: counterStyle,
        errorStyle: errorStyle,
        floatingLabelBehavior: floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        isDense: isDense ?? false,
        border: border ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12.r),
              borderSide: borderSide ?? const BorderSide(color: AppColors.cE1E6EF),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12.r),
              borderSide: borderSide ?? const BorderSide(color: AppColors.cE1E6EF),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12.r),
              borderSide: borderSide ?? const BorderSide(color: AppColors.cE1E6EF),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12.r),
              borderSide: borderSide ?? const BorderSide(color: AppColors.cE1E6EF),
            ),
      ),
    );
  }
}

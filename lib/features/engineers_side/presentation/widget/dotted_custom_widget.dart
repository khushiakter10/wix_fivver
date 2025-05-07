import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class DottedCustomWidget extends StatefulWidget {
  final String text;
  final String textmb;
  final Widget icon;

  const DottedCustomWidget({
    super.key,
    required this.text,
    required this.textmb,
    required this.icon,
  });

  @override
  State<DottedCustomWidget> createState() => _DottedCustomWidgetState();
}

class _DottedCustomWidgetState extends State<DottedCustomWidget> {
  File? _pickedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _pickedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: DottedBorder(
        color: AppColors.c94A3B3,
        strokeWidth: 1.5,
        dashPattern: const [6, 4],
        borderType: BorderType.RRect,
        radius: Radius.circular(12.r),
        child: GestureDetector(
          onTap: _pickImage,   
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: AppColors.cF0F5FF,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: _pickedImage == null
                      ? Center(child: widget.icon)
                      : ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.file(
                      _pickedImage!,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                UIHelper.verticalSpace(12.h),
                Text(widget.text,style: TextFontStyle.headline16c010B21poppinsw500,textAlign: TextAlign.center),
                UIHelper.verticalSpace(4.h),
                Text(widget.textmb, style: TextFontStyle.headline14c607080satoshiw400    .copyWith(fontSize: 12.sp),textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

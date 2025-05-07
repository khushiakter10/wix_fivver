import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/custom_boiler_fixing.dart';
import 'package:wix_fivver/features/presentation/Widget/custom_divider_widget.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';



class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        elevation: 0,
       backgroundColor: AppColors.cFFFFFF,
        leading: Transform.scale(scale: 0.50, child: SvgPicture.asset(Assets.icons.arrwleft,height: 24.h)),
        title: Text('History',style: TextFontStyle.headline20c2B2B2Bsatoshiw700),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
       // physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomDividerWidget(text: 'TODAY'),
              UIHelper.verticalSpace(12.h),
              const CustomBoilerFixing(title: 'Boiler Fixing', text: '1053.99'),
              UIHelper.verticalSpace(12.h),
              const CustomDividerWidget(text: 'Yesterday'),
              UIHelper.verticalSpace(12.h),
              const CustomBoilerFixing(title: 'Boiler Fixing', text: '1053.99'),

            ],
          ),
        ),
      ),

    );
  }
}



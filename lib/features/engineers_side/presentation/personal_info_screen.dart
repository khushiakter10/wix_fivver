
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wix_fivver/common_widget/user_side_custom_text_formfield.dart';
import 'package:wix_fivver/constants/text_font_style.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/calender_custom_wdget.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/custom_drwopdwon_widget.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/custom_ratio_widget.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/divider_custom_widget.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/dotted_custom_widget.dart';
import 'package:wix_fivver/features/engineers_side/presentation/widget/intel_phone_textformfield.dart';
import 'package:wix_fivver/gen/assets.gen.dart';
import 'package:wix_fivver/gen/colors.gen.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';


class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}
class _PersonalInfoScreenState extends State<PersonalInfoScreen> {

  ////////////////////////////////Calender////////////////////////////
  final TextEditingController _dateController = TextEditingController();
  /////////////////////////////////Done/////////////////////////////////
  TextEditingController phoneController = TextEditingController();
  String fullPhoneNumber = '';
  ////////////////////////////////Done////////////////////////////

  //////////////////////////////Calender///////////////////////
  String issueDate = '';
  String expiryDate = '';
  //////////////////////////////Done///////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        toolbarHeight: 80.h,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.cFFFFFF,
        elevation: 0,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(12.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.arrwleft, height: 24.h),
                    UIHelper.horizontalSpace(20.h),
                    Text('OnBoarding', style: TextFontStyle.headline20c132234satoshiw700),
                    const Spacer(),
                    Text('Save', style: TextFontStyle.headline20c132234satoshiw700),
                  ],
                ),
              ),
              UIHelper.verticalSpace(18.h),
              UIHelper.customDivider(color: AppColors.cF0F5FA, height: 2),
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
           /////////////////////////////////Divider///////////////////////////////////////////
            const DividerCustomWidget(textdivider: 'BASIC DETAILS'),
            /////////////////////////////////Done/////////////////////////////////////////////


            UIHelper.verticalSpace(20.h),
            Text('Name*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            UserSideCustomTextFormField(hintTxt: 'Enter name',hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(20.h),
            Text('Email Address*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            UserSideCustomTextFormField(hintTxt: 'Enter email address',  hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(20.h),

/////////////////////////////////Calender///////////////////////////////////////////
            Row(
              children: [
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Date of Birth*', style: TextFontStyle.headline12c132234satoshiw700),
                      SizedBox(height: 4.h),
                      CustomCalendarField(  controller: _dateController,hintText: 'DD/MM/YYYY'),

                    ],
                  )),
              ],
            ),
////////////////////////////////Done///////////////////////////////////////////


            UIHelper.verticalSpace(20.h),



///////////////////////////////////////Radio//////////////////////////////
            Text( 'Select Gender',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            const CustomRatioWidget(option1: 'Male',option2: 'Female',option3: 'Other' ),
            UIHelper.verticalSpace(20.h),
            Text( 'Your expertise*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(8.h),
            const CustomRatioWidget(option4: 'Plumber',option5: 'Electrician',option6: 'Both'),
       ////////////////////////////////////////Done///////////////////////////////

            UIHelper.verticalSpace(24.h),
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            UIHelper.verticalSpace(24.h),

      /////////////////////////////////Divider///////////////////////////////////////////
          const DividerCustomWidget(textdivider: 'Gas Safety Registration'),
            UIHelper.verticalSpace(20.h),
        /////////////////////////////////Done/////////////////////////////////////////////


            Text( 'Registration Number*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            UserSideCustomTextFormField(
                hintTxt: 'Enter registration number', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(20.h),

//////////////////////////Calender///////////////////////////////////////////////
            Row(
              children: [
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Age of Boiler*', style: TextFontStyle.headline12c132234satoshiw700),
                      SizedBox(height: 4.h),
                      CustomCalendarField(  controller: _dateController,hintText: 'DD/MM/YYYY'),

                    ],
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Last Serviced Date*', style: TextFontStyle.headline12c132234satoshiw700),
                      SizedBox(height: 4.h),
                      CustomCalendarField( controller: _dateController,hintText: 'DD/MM/YYYY'),




                    ],
                  ),
                ),
              ],
            ),
//////////////////////////Done///////////////////////////////////////////////

            UIHelper.verticalSpace(20.h),

            Text( 'Front Side of Card*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(8.h),
            //////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,,Dotted,,,,,,,,,,,,,,,,,/////////////////////////////////////

            DottedCustomWidget(text: 'Click to Upload Front Side of Card', textmb: '(Max. File size: 25 MB)', icon: SvgPicture.asset(Assets.icons.gallry, height: 24.h)),
            //////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,,,,Done,,,,,,,,,,,,,,/////////////////////////////////////

            UIHelper.verticalSpace(20.h),
            Text( 'Back Side of Card*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(8.h),

//////////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,Dotted,,,,,,,,,,,,,,,,,,,,,,,,,,/////////////////////
            DottedCustomWidget(text: 'Click to Upload Back Side of Card', textmb: '(Max. File size: 25 MB)', icon: SvgPicture.asset(Assets.icons.gallry, height: 24.h)),
/////////////////////Done///////////////,,,,,,,,,,,,,,,,,,,,,,,,Done,,,,,,,,,,,,,,//////////////////////

            UIHelper.verticalSpace(24.h),
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            UIHelper.verticalSpace(24.h),

            /////////////////////////////////Divider///////////////////////////////////////////
            const DividerCustomWidget(textdivider: 'NIC EIC qualification'),
            UIHelper.verticalSpace(20.h),
            /////////////////////////////////Done/////////////////////////////////////////////


            ////////////////////////////////////////RegistationNumber////////////////////////////////
            Text( 'Registration Number*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            UserSideCustomTextFormField( hintTxt: 'Enter registration number',   hinStyle: TextFontStyle.headline14c607080satoshiw400 ),
            ////////////////////////////////////////Done////////////////////////////////
            UIHelper.verticalSpace(20.h),


            ////////////////////////////////////////IssueDate////////////////////////////////


            Row(
              children: [
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Age of Boiler*', style: TextFontStyle.headline12c132234satoshiw700),
                      SizedBox(height: 4.h),
                      CustomCalendarField(  controller: _dateController,hintText: 'DD/MM/YYYY'),

                    ],
                  ),
                ),
                 UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Last Serviced Date*', style: TextFontStyle.headline12c132234satoshiw700),
                      SizedBox(height: 4.h),
                      CustomCalendarField( controller: _dateController,hintText: 'DD/MM/YYYY'),




                    ],
                  ),
                ),
              ],
            ),


            ////////////////////////////////////////Done////////////////////////////////



            UIHelper.verticalSpace(20.h),
            Text( 'Front Side of Card*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),

//////////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,Dotted,,,,,,,,,,,,,,,,,,,,,,,,,,/////////////////////
            DottedCustomWidget(text: 'Click to Upload Front Side of Card', textmb: '(Max. File size: 25 MB)', icon: SvgPicture.asset(Assets.icons.gallry, height: 24.h)),
/////////////////////Done///////////////,,,,,,,,,,,,,,,,,,,,Done,,,,,,,,,,,,,,//////////////////////

            UIHelper.verticalSpace(20.h),
            Text( 'Back Side of Card*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
//////////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,Dotted,,,,,,,,,,,,,,,,,,,,,,,,,,/////////////////////
            DottedCustomWidget(text: 'Click to Upload Back Side of Card', textmb: '(Max. File size: 25 MB)', icon: SvgPicture.asset(Assets.icons.gallry, height: 24.h)),
/////////////////////Done///////////////,,,,,,,,,,,,,,,,,,,,,,,,Done,,,,,,,,,,,,,,//////////////////////

            UIHelper.verticalSpace(24.h),
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            UIHelper.verticalSpace(24.h),


            /////////////////////////////////Divider///////////////////////////////////////////
            const DividerCustomWidget(textdivider: 'NI Number'),
            UIHelper.verticalSpace(24.h),
            /////////////////////////////////Done/////////////////////////////////////////////

            Text( 'NI Number*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            //////////////////////////////////////////////////
            UserSideCustomTextFormField(
                hintTxt: 'Enter NI card number', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(24.h),
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            /////////////////////////////////////////////
            UIHelper.verticalSpace(24.h),


            /////////////////////////////////Divider///////////////////////////////////////////
            const DividerCustomWidget(textdivider: 'NVQ QUALIFICATION'),
            UIHelper.verticalSpace(20.h),
            /////////////////////////////////Done/////////////////////////////////////////////



            Text( 'NVQ QUALIFICATION*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),
            /////////////////////////////////////////////////
            UserSideCustomTextFormField(
                hintTxt: 'Enter NVQ number', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(20.h),
            /////////////////////////////////////////////////
            Text( 'NVQ Certificate Level 2*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),

            //////////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,Dotted,,,,,,,,,,,,,,,,,,,,,,,,,,/////////////////////
            DottedCustomWidget(text: 'Click to Upload copy of certificate', textmb: '(Max. File size: 25 MB)', icon: SvgPicture.asset(Assets.icons.gallry, height: 24.h)),
            /////////////////////Done///////////////,,,,,,,,,,,,,,,,,,,,,,,,Done,,,,,,,,,,,,,,//////////////////////

            UIHelper.verticalSpace(20.h),

            Text( 'NVQ Certificate Level 3',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),


            //////////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,Dotted,,,,,,,,,,,,,,,,,,,,,,,,,,/////////////////////
            DottedCustomWidget(text: 'Click to Upload copy of certificate', textmb: '(Max. File size: 25 MB)', icon: SvgPicture.asset(Assets.icons.gallry, height: 24.h)),
            /////////////////////Done///////////////,,,,,,,,,,,,,,,,,,,,,,,,Done,,,,,,,,,,,,,,//////////////////////

            UIHelper.verticalSpace(24.h),


            ////////////////////////////////////Abar Divider////////////////////
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            UIHelper.verticalSpace(24.h),



            /////////////////////////////////Divider///////////////////////////////////////////
            const DividerCustomWidget(textdivider: 'CURRENT ADDRESS'),
            UIHelper.verticalSpace(20.h),
            /////////////////////////////////Done/////////////////////////////////////////////




           Text( 'Address*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),

            UserSideCustomTextFormField(
                hintTxt: 'Enter address number', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(20.h),
            ///////////////////////////////////////////////////////

            Text( 'Apartment, Suite, Unit, Building, Floor, etc*',style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4.h),

            UserSideCustomTextFormField(
                hintTxt: 'Enter suite number', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            UIHelper.verticalSpace(20.h),
            /////////////////////////////////////////////////////////////////////////////////////


            Text('State/Province*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),



     ////////////////////////////////Drwodwon///////////////////////////////////////////////////////////
            UserSideCustomDropdown(
              options: const ['Option 1', 'Option 2', 'Option 3'],
              suffixIcon: Transform.scale(scale: 0.4,child: SvgPicture.asset(Assets.icons.drowpbuttton,height: 20.h)),
              onChanged: (value) {} ),
            ////////////////////////////////Done///////////////////////////////////////////////////////////


            UIHelper.verticalSpace(20.h),

            /////////////////////////////////////////////////////////City/////////////////////////////////////

            Text('City*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),


            ////////////////////////////////Drwodwon///////////////////////////////////////////////////////////
            UserSideCustomDropdown(
                options: const ['Option 1', 'Option 2', 'Option 3'],
                suffixIcon: Transform.scale(scale: 0.4,child: SvgPicture.asset(Assets.icons.drowpbuttton,height: 20.h)),
                onChanged: (value) {} ),
            ////////////////////////////////Done///////////////////////////////////////////////////////////

            UIHelper.verticalSpace(20.h),
            /////////////////////////////////////////////////////////Done/////////////////////////////////////
            Text('Country', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),

            /////////////////////////IntelPhone//////////////////////////////

            IntelPhoneTextFormField(
              controller: phoneController,
              onChanged: (value) {
                setState(() {
                  fullPhoneNumber = value;
                });
              },
            ),
            UIHelper.verticalSpace(20.h),
            /////////////////////////Done//////////////////////////////

            Text('ZIP / Postal Code*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),

            UserSideCustomTextFormField(
                hintTxt: 'Enter ZIP number', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            ///////////////////////////////EnterZip//////////////////////////////////
            UIHelper.verticalSpace(24.h),

            ///////////////////////////////Divider///////////////////////////////////
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            ///////////////////////////////Done///////////////////////////////////
            UIHelper.verticalSpace(24.h),


             /////////////////////////////////Divider///////////////////////////////////////////
            const DividerCustomWidget(textdivider: 'UTR Number'),
            /////////////////////////////////Done/////////////////////////////////////////////



            UIHelper.verticalSpace(20.h),
            /////////////////////////////Gender////////////////////////////////////////////
            Text('CIS REGISTERED*', style: TextFontStyle.headline12c132234satoshiw700),

             const CustomRatioWidget(option1: 'Yes',option2: 'No'),
            UIHelper.verticalSpace(24.h),
            /////////////////////////////Done////////////////////////////////////////////
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            UIHelper.verticalSpace(24.h),

            /////////////////////////////////Divider///////////////////////////////////////////
            const DividerCustomWidget(textdivider: 'BANK DETAILS'),
            UIHelper.verticalSpace(20.h),
            /////////////////////////////////Done/////////////////////////////////////////////

//____________________________________________________________50%____________________________________________________________________________________//


            /////////////////////////////SlectBank////////////////////////////////
            Text('Bank*', style: TextFontStyle.headline12c132234satoshiw700),

            UIHelper.verticalSpace(4),

            ////////////////////////////////Drwodwon///////////////////////////////////////////////////////////
            UserSideCustomDropdown(
                options: const ['Option 1', 'Option 2', 'Option 3'],
                suffixIcon: Transform.scale(scale: 0.4,child: SvgPicture.asset(Assets.icons.drowpbuttton,height: 20.h)),
                onChanged: (value) {} ),
            ////////////////////////////////Done///////////////////////////////////////////////////////////

            UIHelper.verticalSpace(20.h),

            // ///////////////////////////Account Number////////////////////////////////

            Text('Account Number*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),
            UserSideCustomTextFormField(
                hintTxt: 'Enter account number', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            // ///////////////////////////Done////////////////////////////////
            UIHelper.verticalSpace(20.h),

            // /////////////////////////// Enter ifsc code////////////////////////////////
            Text('Account Holder Name*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),
            UserSideCustomTextFormField(
                hintTxt: 'Enter ifsc code', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            // ///////////////////////////Done////////////////////////////////
            UIHelper.verticalSpace(20.h),

            ///////////////////////////////SORT Code*////////////////////////////////////////////////
            Text('SORT Code*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),
            UserSideCustomTextFormField(
                hintTxt: 'Enter ifsc code', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            ///////////////////////////////Done////////////////////////////////////////////////
            UIHelper.verticalSpace(24.h),
            Divider(color: AppColors.cF0F5FA,thickness: 11, height: 2.h),
            UIHelper.verticalSpace(24.h),


            /////////////////////////////////Divider///////////////////////////////////////////
            const DividerCustomWidget(textdivider: 'DRIVING LICENSE'),
            UIHelper.verticalSpace(20.h),
            /////////////////////////////////Done/////////////////////////////////////////////



            Text('Driving License Number*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),
            UserSideCustomTextFormField(
                hintTxt: 'Enter ifsc code', hinStyle: TextFontStyle.headline14c607080satoshiw400),
            //////////////////////////////////////Done////////////////////////////

            UIHelper.verticalSpace(20.h),


            //////////////////////////////////////Calender////////////////////////////
                  Row(
              children: [
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Age of Boiler*', style: TextFontStyle.headline12c132234satoshiw700),
                      SizedBox(height: 4.h),
                      CustomCalendarField(  controller: _dateController,hintText: 'DD/MM/YYYY'),

                    ],
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Last Serviced Date*', style: TextFontStyle.headline12c132234satoshiw700),
                      SizedBox(height: 4.h),
                      CustomCalendarField( controller: _dateController,hintText: 'DD/MM/YYYY'),




                    ],
                  ),
                ),
              ],
            ),
            //////////////////////////////////////Done////////////////////////////


            UIHelper.verticalSpace(20.h),
            Text('Front Side of Card*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),


            //////////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,Dotted,,,,,,,,,,,,,,,,,,,,,,,,,,/////////////////////
            DottedCustomWidget(text: 'Click to Upload copy of certificate', textmb: '(Max. File size: 25 MB)', icon: SvgPicture.asset(Assets.icons.gallry, height: 24.h)),
            /////////////////////Done///////////////,,,,,,,,,,,,,,,,,,,,,,,,Done,,,,,,,,,,,,,,//////////////////////

            UIHelper.verticalSpace(20.h),
            Text('Back Side of Card*', style: TextFontStyle.headline12c132234satoshiw700),
            UIHelper.verticalSpace(4),

            //////////////////////////////////////,,,,,,,,,,,,,,,,,,,,,,Dotted,,,,,,,,,,,,,,,,,,,,,,,,,,/////////////////////
            DottedCustomWidget(text: 'Click to Upload copy of certificate', textmb: '(Max. File size: 25 MB)', icon: SvgPicture.asset(Assets.icons.gallry, height: 24.h)),
            /////////////////////Done///////////////,,,,,,,,,,,,,,,,,,,,,,,,Done,,,,,,,,,,,,,,//////////////////////
            UIHelper.verticalSpace(24.h),
          ],
        ),
      ),
    );
  }
}





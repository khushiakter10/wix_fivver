// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:rahatscoaching_app/assets_helper/app_colors.dart';
// import 'package:rahatscoaching_app/assets_helper/app_fonts.dart';
// import 'package:rahatscoaching_app/assets_helper/app_icons.dart';
// import 'package:rahatscoaching_app/common_widgets/custom_button_widget.dart';
// import 'package:rahatscoaching_app/helpers/navigation_service.dart';
// import 'package:rahatscoaching_app/helpers/ui_helpers.dart';
// import 'package:rahatscoaching_app/helpers/all_routes.dart';
//
// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key});
//
//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
//
//   final _formKey = GlobalKey<FormState>();
//   final List<TextEditingController> _otpControllers =
//
//
//
//   List.generate(4, (_) => TextEditingController());
//   final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
//   final List<bool> _isFieldInvalid = List.generate(4, (_) => false);
//
//   String get _otp => _otpControllers.map((e) => e.text).join();
//
//   void _validateOtp() {
//     setState(() {
//       for (int i = 0; i < _otpControllers.length; i++) {
//         _isFieldInvalid[i] = _otpControllers[i].text.isEmpty;
//       }
//     });
//
//     if (_otp.length == 4 && RegExp(r'^\d{4}$').hasMatch(_otp)) {
//       NavigationService.navigateTo(Routes.createNewPassWordScreen);
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           backgroundColor: Colors.red,
//           content: Text("Please enter a valid 4-digit OTP"),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (kDebugMode) {
//       print(':::::::::::::::::::::::::: Otp Screen ::::::::::::::::::::::::::::');
//     }
//
//     return Scaffold(
//       backgroundColor: AppColor.cFFFFFF,
//       appBar: AppBar(
//           toolbarHeight: 70,
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           leading: Container(
//             margin: EdgeInsets.only(left: 10),
//             child: GestureDetector(child: SvgPicture.asset(AppIcons.arrwicon,height: 24.h),onTap: (){
//               NavigationService.goBack;
//             },),
//           )
//
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 23.w),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Du har fått post',
//                 style:
//                 TextFontStyle.textStyle16SatoshiW700.copyWith(fontSize: 24.sp),
//               ),
//               UIHelper.verticalSpace(6.h),
//               Text(
//                 'Vi har skickat OTP-verifieringskoden till din e-postadress. Kontrollera din e-post och ange koden nedan.',
//                 style: TextFontStyle.headline14c4B586BFigtreew400,
//               ),
//               UIHelper.verticalSpace(44.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(4, (index) {
//                   return Container(
//                     width: 56.w,
//                     height: 56.h,
//                     margin: EdgeInsets.symmetric(horizontal: 10.w),
//                     child: TextFormField(
//                       controller: _otpControllers[index],
//                       focusNode: _focusNodes[index],
//                       keyboardType: TextInputType.number,
//                       maxLength: 1,
//                       textAlign: TextAlign.center,
//                       inputFormatters: [
//                         FilteringTextInputFormatter.digitsOnly,
//                       ],
//                       style: TextFontStyle.headline16c393C43Figtreew600,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: AppColor.cF3F3F4,
//                         counterText: '',
//                         contentPadding: EdgeInsets.symmetric(vertical: 16.h),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(16),
//                           borderSide: BorderSide(
//                               color: _isFieldInvalid[index]
//                                   ?Colors.transparent
//                                   : Colors.transparent),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                               color: _isFieldInvalid[index]
//                                   ? Colors.transparent
//                                   : Colors.transparent),
//                         ),
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return '';
//                         }
//                         if (!RegExp(r'^\d$').hasMatch(value)) {
//                           return '';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) {
//                         if (_isFieldInvalid[index]) {
//                           setState(() {
//                             _isFieldInvalid[index] = false;
//                           });
//                         }
//                         if (value.isNotEmpty && index < 3) {
//                           _focusNodes[index].unfocus();
//                           FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
//                         } else if (value.isEmpty && index > 0) {
//                           _focusNodes[index].unfocus();
//                           FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
//                         }
//                       },
//                     ),
//                   );
//                 }),
//               ),
//               UIHelper.verticalSpace(12.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Fick du inte e-post?',
//                     style: TextFontStyle.headline14c000000Satoshiw400,
//                   ),
//                   UIHelper.horizontalSpace(4.w),
//                   GestureDetector(
//                     onTap: () {
//                     },
//                     child: Text(
//                       'Skicka igen',
//                       style: TextFontStyle.headline14cF97316Satoshiw700,
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 25.h),
//         child: CustomButtonWidget(
//           heightbutton: 56.h,
//           textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
//           text: 'Verify',
//           borderRadius: 100.r,
//           onPressed: () {
//             if (_formKey.currentState!.validate()) {
//               final otp = _otpControllers.map((e) => e.text).join();
//               if (otp.length == 4) {
//                 NavigationService.navigateTo(Routes.createNewPassWordScreen);
//               } else {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     //backgroundColor: Colors.red,
//                     content: Text("Please enter the complete 4-digit OTP"),
//                   ),
//                 );
//               }
//             }
//           },
//         ),
//       ),
//     );
//   }
//
//
//   @override
//   void dispose() {
//     for (final controller in _otpControllers) {
//       controller.dispose();
//     }
//     for (final focusNode in _focusNodes) {
//       focusNode.dispose();
//     }
//     super.dispose();
//   }
// }

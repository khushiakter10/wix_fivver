//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';
// import '../../../gen/assets.gen.dart';
//
// class OnboardScreen extends StatefulWidget {
//   const OnboardScreen({super.key});
//
//   @override
//   State<OnboardScreen> createState() => _OnboardScreenState();
// }
//
// class _OnboardScreenState extends State<OnboardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(Assets.images.onbordingone.path),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 50.h),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(32.r),
//                   border: Border.all(color: AppColors.c4F3422),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 12.w),
//                   child: Text("Step One", style: TextFontStyle.stepc4F3422),
//                 ),
//               ),
//               UIHelper.verticalSpace(443.h),
//               Stack(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                         color:  AppColors.cFFFFFF,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(60.r),
//                             topRight: Radius.circular(60.r))
//                     ),
//                     child:   Padding(
//                       padding:  EdgeInsets.symmetric(vertical: 30.h,horizontal: 12.w),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding:  EdgeInsets.symmetric(horizontal: 50.w),
//                             child: LinearPercentIndicator(
//                               barRadius: const Radius.circular(10),
//                               width: MediaQuery.of(context).size.width - 150,
//                               lineHeight: 13.0,
//                               percent: 0.5,
//                               linearStrokeCap: LinearStrokeCap.roundAll,
//                               progressColor: AppColors.c1C1F5E,
//                               backgroundColor: AppColors.cD0D1F1,
//                             ),
//                           ),
//                           UIHelper.verticalSpace(31.h),
//                           Text("Simplify Your Logistics",style:  TextFontStyle.signc1C1F5E30),
//                           UIHelper.verticalSpace(25.h),
//                           Text("Real-time GPS, seamless job management, and instant ",style: TextFontStyle.c575757),
//                           UIHelper.verticalSpace(6.h),
//                           Text("notifications at your fingertips.",style: TextFontStyle.c575757),
//                           UIHelper.verticalSpace(35.h),
//
//                           GestureDetector(
//                             onTap: (){
//                               NavigationService.navigateTo(Routes.stepTwoScreen);
//                             },
//                             child: Container(
//                                 padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
//                                 decoration: BoxDecoration(
//                                     color: AppColors.c1C1F5E,
//                                     borderRadius: BorderRadius.circular(100.r)
//                                 ),
//                                 child:  Image.asset(Assets.icons.motoicon.path,height: 24.h)
//                             ),
//                           ),
//
//                         ],
//                       ),
//                     ),)
//
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

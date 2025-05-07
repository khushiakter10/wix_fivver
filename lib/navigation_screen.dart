// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:multi_project/features/engineers_side/presentation/history_screen.dart';
// import 'package:multi_project/features/engineers_side/presentation/home_screen_sakline.dart';
// import 'package:multi_project/features/engineers_side/presentation/personal_info_screen.dart';
// import 'package:multi_project/features/presentation/account_profile_screen.dart';
// import 'package:multi_project/features/presentation/create_job_screen.dart';
// import 'package:multi_project/gen/colors.gen.dart';
// import 'package:multi_project/helpers/all_routes.dart';
// import 'package:multi_project/helpers/navigation_service.dart';
// import 'package:multi_project/helpers/ui_helpers.dart';
//
//
//
// class FancyBottomBar extends StatefulWidget {
//   const FancyBottomBar({super.key});
//   @override
//   State<FancyBottomBar> createState() => _FancyBottomBarState();
// }
//
// class _FancyBottomBarState extends State<FancyBottomBar> {
//   int _currentIndex = 0;
//
//   void onTap(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   final List<String> iconPaths = [
//     'assets/icons/home.svg',
//     'assets/icons/messages.svg',
//     'assets/icons/plashIcon.svg', // FAB icon
//     'assets/icons/history.svg',
//     'assets/icons/profiletow.svg',
//   ];
//
//   final List<String> labels = [
//     'Home',
//     'Message',
//     'Add',
//     'History',
//     'Profile',
//   ];
//
//   final List<Widget> screens = [
//     PersonalInfoScreen(),
//     HistoryScreen(),
//     CreateJobScreen(),
//     HomeSaklainScreen(),
//     AccountProfileScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: screens[_currentIndex],
//       bottomNavigationBar: ClipPath(
//         clipper: OutwardCurveBottomBarClipper(),
//         child: Container(
//           height: 120.h,
//           color: Colors.black,
//           padding: EdgeInsets.symmetric(horizontal: 20.w),
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(5, (index) {
//                   if (index == 2) return const SizedBox(); // Skip FAB icon
//                   return GestureDetector(
//                     onTap: () => onTap(index),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(top: 22.h),
//                           child: SvgPicture.asset(
//                             iconPaths[index],
//                             color: _currentIndex == index
//                                 ? AppColors.c1658FF
//                                 : AppColors.cA7A7A7,
//                             width: 30.w,
//                             height: 30.h,
//                           ),
//                         ),
//                         UIHelper.verticalSpace(4),
//                         Text(
//                           labels[index],
//                           style: TextStyle(
//                             fontSize: 13.sp,
//                             fontFamily: 'Satoshi',
//                             fontWeight: FontWeight.w500,
//                             color: _currentIndex == index
//                                 ? AppColors.c1658FF
//                                 : AppColors.cA7A7A7,
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }),
//               ),
//               Positioned(
//                 left: MediaQuery.of(context).size.width / 2 - 54.w,
//                 bottom: 11.h,
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       NavigationService.navigateTo(Routes.signUpScreen);
//                     });
//                     if (kDebugMode) {
//                       print('FAB tapped');
//                     }
//                   },
//                   child: Container(
//                     width: 70.w,
//                     height: 70.h,
//                     decoration: BoxDecoration(
//                       color: AppColors.c306BFE,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: const Color(0xFF1D1F24), width: 5.w),
//                     ),
//                     child: Transform.scale(
//                       scale: 0.66,
//                       child: SvgPicture.asset(
//                         iconPaths[2],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class OutwardCurveBottomBarClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double curveHeight = 30.0;
//
//     Path path = Path();
//     path.moveTo(0, 0);
//
//     path.quadraticBezierTo(
//         size.width * 0.05, curveHeight, size.width * 0.15, curveHeight);
//
//     path.lineTo(size.width * 0.85, curveHeight);
//
//     path.quadraticBezierTo(
//         size.width * 0.95, curveHeight, size.width, 0);
//
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

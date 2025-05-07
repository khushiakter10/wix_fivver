// // ignore_for_file: unused_element
//
// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:thibaudbdx_project/welcome_screen.dart';
// import 'constants/app_constants.dart';
// import 'helpers/di.dart';
// import 'helpers/helper_methods.dart';
// import 'networks/dio/dio.dart';
// import 'onboard_screen.dart';
//
// final class Loading extends StatefulWidget {
//   const Loading({super.key});
//
//   @override
//   State<Loading> createState() => _LoadingState();
// }
//
// class _LoadingState extends State<Loading> {
//   bool _isLoading = true;
//
//   @override
//   void initState() {
//     loadInitialData();
//     super.initState();
//   }
//
//   loadInitialData() async {
//     await setInitValue();
//     bool data = appData.read(kKeyIsLoggedIn) ?? false;
//     log("==== $data");
//     if (data) {
//       String token = appData.read(kKeyAccessToken);
//       DioSingleton.instance.update(token);
//       // await getOwnProfileRxObj.getOwnProfileRx();
//       // getProfileResponseRxObj.getProfile();
//       // getAllCategoryResponseRXObj.getAllCategory();
//       // getAddsResponseRXObj.getAdds();
//     }
//     await Future.delayed(const Duration(seconds: 1));
//     setState(() {
//       _isLoading = false;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return const WelcomeScreen();
//     } else {
//       // return appData.read(kKeyIsLoggedIn)
//       //     ? NavigationScreen()
//       //     :
//        return const OnboardScreen();
//
//     }
//   }
// }

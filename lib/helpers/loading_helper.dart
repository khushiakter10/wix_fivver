
import 'package:flutter/material.dart';
import '../gen/assets.gen.dart';

import 'navigation_service.dart';

extension Loader on Future {

    Future<dynamic> waitingForSucess() async {
    // showDialog(
    //   context: NavigationService.context,
    //   builder: (context) => Center(child: shimmer(context: context, name: Assets.lottie.nLoading)),
    // );

    try {
      // Wait for the original future to complete
      dynamic result = await this;

      return result;
    } finally {
      // Close the loading dialog
      NavigationService.goBack;
    }
  }
}

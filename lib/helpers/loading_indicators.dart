import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../gen/assets.gen.dart';


class BookLoadingLottieWidget extends StatelessWidget {
  const BookLoadingLottieWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: shimmer(
          context: context, name: Assets.lottie.loading, size: 120.sp),
    );
  }
}
class LoadingLottieWidget extends StatelessWidget {
  const LoadingLottieWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: shimmer(
          context: context, name: Assets.lottie.loading, size: 120.sp),
    );
  }
}

class DropLoadingLottieWidget extends StatelessWidget {
  const DropLoadingLottieWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: shimmer(
          context: context, name: Assets.lottie.loading, size: 120.sp),
    );
  }
}

Widget shimmer({
  String? name,
  required BuildContext context,
  Color? color,
  double? size,
}) {
  return Center(
    child: Container(
      child: Lottie.asset(
        name ?? Assets.lottie.loading, width: size, height: size),
    ),
  );
}


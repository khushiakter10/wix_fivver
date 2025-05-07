import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCurveClipperWidget extends StatelessWidget {
  final Color backgroundColor;
  final double height;

  const TopCurveClipperWidget({
    super.key,
    this.backgroundColor = Colors.white,
    this.height = 240,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _TopCurveClipper(),
      child: Container(
        height: height.h,
        color: backgroundColor,
      ),
    );
  }
}

class _TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60.h);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60.h,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

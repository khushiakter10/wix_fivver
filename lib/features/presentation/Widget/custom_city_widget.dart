import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/gen/colors.gen.dart';

class CityListScreen extends StatelessWidget {
  final String text;
  final List<String> cityList = [
    'Dinajpur',
    'Rangpur',
    'Rajshahi',
    'Bogura',
    'Khulna',
    'Barishal',
    'Mohakhali',
  ];

  CityListScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.cFFFFFF,
        title:  Text(text),
        centerTitle: true,
      ),
      body:
      ListView.builder(
        padding: EdgeInsets.all(20.w),
        itemCount: cityList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cityList[index]),
            onTap: () {
              Navigator.pop(context, cityList[index]); // send back selected city
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wix_fivver/gen/colors.gen.dart';


class CustomSelectBoylerNumber extends StatelessWidget {
  final String text;
  final List<String> boilerTypeList = [
    'Combi Boiler',
    'System Boiler',
    'Regular Boiler',
    'Condensing Boiler',
    'Electric Boiler',
  ];

  CustomSelectBoylerNumber({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        backgroundColor: AppColors.cFFFFFF,
        title:  Text(text),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20.w),
        itemCount: boilerTypeList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(boilerTypeList[index]),
            onTap: () {
              Navigator.pop(context, boilerTypeList[index]); // send back selected boiler
            },
          );
        },
      ),
    );
  }
}
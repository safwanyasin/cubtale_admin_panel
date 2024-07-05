import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPageCard extends StatelessWidget {
  const MainPageCard({Key? key, required this.heading, required this.content})
      : super(key: key);

  final String heading;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).highlightColor, width: 2),
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: [
            Text(heading, style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20.h),
            content,
          ],
        ));
  }
}

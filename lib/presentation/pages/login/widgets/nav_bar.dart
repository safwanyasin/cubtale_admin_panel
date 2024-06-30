import 'package:cubtale_challenge/presentation/pages/login/widgets/theme_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40.w),
        ),
        color: Theme.of(context).primaryColor,
      ),
      // height: 60.h,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/cubtale_logo.png', height: 100.h),
              Image.asset('assets/images/cubtale_watermark.png', height: 100.h),
            ],
          ),
          const ThemeButton(),
        ],
      ),
    );
  }
}

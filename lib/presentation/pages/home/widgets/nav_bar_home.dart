import 'package:cubtale_challenge/presentation/reusable_components/buttons/nav_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarHome extends StatelessWidget {
  const NavBarHome({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarButton(onPressed: () {}, text: "Search by Mail"),
              Image.asset('assets/images/vertical_divider.png', height: 60.h),
              NavBarButton(onPressed: () {}, text: "Search by ID"),
              Image.asset('assets/images/vertical_divider.png', height: 60.h),
              NavBarButton(onPressed: () {}, text: "Search by Date"),
            ],
          ),
          // InkWell(
          //   onTap: () {},
          //   child: Image.asset('assets/images/menu_burger.png', height: 60.h),
          // )
          
        ],
      ),
    );
  }
}

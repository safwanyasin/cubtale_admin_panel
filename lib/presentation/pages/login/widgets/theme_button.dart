import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({super.key});
  final bool darkTheme = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
          color: const Color.fromRGBO(255, 255, 255, 0.5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            darkTheme
                ? Image.asset('assets/images/lightmode_icon.png')
                : Image.asset('assets/images/darkmode_icon.png'),
            SizedBox(width: 10.w),
            darkTheme
                ? Text("Light Mode",
                    style: Theme.of(context).textTheme.labelMedium)
                : Text("Dark Mode",
                    style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}

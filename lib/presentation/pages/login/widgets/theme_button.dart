import 'package:cubtale_challenge/application/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the current theme state
    final currentTheme = context.watch<ThemeCubit>().state;

    // Determine whether the current theme is dark
    final isDarkTheme = currentTheme == AppTheme.dark;

    return InkWell(
      onTap: () {
        // Toggle the theme
        context.read<ThemeCubit>().toggleTheme();
      },
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
          color: const Color.fromRGBO(255, 255, 255, 0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isDarkTheme
                ? Image.asset('assets/images/lightmode_icon.png')
                : Image.asset('assets/images/darkmode_icon.png'),
            SizedBox(width: 10.w),
            isDarkTheme
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorButton extends StatelessWidget {
  const ErrorButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: IntrinsicWidth(
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.only(left: 20.w, top: 10.w, right: 20.w, bottom: 10.w),
            decoration: BoxDecoration(
              // color: Theme.of(context).focusColor,
              border: Border.all(
                  color: Theme.of(context).indicatorColor, width: 5.w),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.w),
                  topRight: Radius.circular(10.w),
                  bottomLeft: Radius.circular(20.w),
                  bottomRight: Radius.circular(20.w)),
            ),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.quicksand(
                  fontSize: 25.w,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).indicatorColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:cubtale_challenge/presentation/reusable_components/buttons/error_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPopup extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onClose;

  const ErrorPopup({
    Key? key,
    required this.errorMessage,
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).cardColor,
      content: Container(
        width: 100.w,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20.w),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset('assets/images/oops_icon.png'),
            SizedBox(
              height: 50.h,
            ),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                fontSize: 40.w,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).indicatorColor,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            ErrorButton(onPressed: onClose, text: 'Try again'),
          ],
        ),
      ),
    );
  }
}

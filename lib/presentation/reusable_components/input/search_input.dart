// ignore_for_file: unnecessary_null_comparison

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SearchInput extends StatefulWidget {
  //final TextEditingController controller;
  final String hintText;
  bool obscureText;
  final void Function(String) onChanged;
  final String? Function(String?) validator;
  final bool showError;

  SearchInput({
    super.key,
    //required this.controller,
    this.hintText = '',
    required this.onChanged,
    required this.validator,
    this.obscureText = false,
    this.showError = false,
  });

  @override
  State<SearchInput> createState() => _InputState();
}

class _InputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: TextFormField(
            onChanged: widget.onChanged,
            obscureText: widget.obscureText,
            //controller: widget.controller,
            style: Theme.of(context).textTheme.titleMedium,
            validator: widget.validator,
            decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
                hintStyle: Theme.of(context).textTheme.titleMedium),
          ),
        ),
      ),
      SizedBox(
        height: 3.h,
      ),
      if (widget.validator(null) != null && widget.showError)
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            widget.validator(null) ?? '', // Pass null to get the error message
            style: GoogleFonts.quicksand(
              color: Colors.red,
              fontSize: 12.w,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
    ]);
  }
}

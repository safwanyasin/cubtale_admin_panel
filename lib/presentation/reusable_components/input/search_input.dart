// ignore_for_file: unnecessary_null_comparison

import 'dart:ui';
import 'package:cubtale_challenge/application/search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class SearchInput extends StatefulWidget {
  //final TextEditingController controller;
  final String hintText;
  bool obscureText;
  final void Function(String) onChanged;
  final String? Function(String?) validator;
  final bool showError;
  final String type;

  SearchInput({
    super.key,
    //required this.controller,
    this.hintText = '',
    required this.onChanged,
    required this.validator,
    this.obscureText = false,
    this.showError = false,
    required this.type,
  });

  @override
  State<SearchInput> createState() => _InputState();
}

class _InputState extends State<SearchInput> {
  late TextEditingController _controller;

  final validator = (String? value) {
    if (value == null || value.isEmpty) {
      return 'Date cannot be empty';
    }

    final dateRegex =
        RegExp(r'^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-\d{4}$');

    if (!dateRegex.hasMatch(value)) {
      return 'Enter a valid date in dd-mm-yyyy format';
    }

    return null;
  };

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        height: 90.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
            child: TextFormField(
              controller: _controller,
              onTap: () async {
                print(widget.type);
                if (widget.type == 'Date') {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (selectedDate != null) {
                    final formattedDate =
                        DateFormat('dd-MM-yyyy').format(selectedDate);
                    _controller.text = formattedDate; // Update the text field
                    widget.onChanged(formattedDate);
                    print(formattedDate);
                    context.read<SearchCubit>().updateSearchTerm(formattedDate);
                  }
                }
              },
              onChanged: widget.onChanged,
              obscureText: widget.obscureText,
              //controller: widget.controller,
              style: Theme.of(context).textTheme.titleMedium,
              validator: widget.type != 'Date'
                  ? widget.validator
                  : validator,
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
                hintStyle: Theme.of(context).textTheme.titleMedium,
                isCollapsed: true,
                contentPadding: EdgeInsets.all(10.h),
              ),
            ),
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

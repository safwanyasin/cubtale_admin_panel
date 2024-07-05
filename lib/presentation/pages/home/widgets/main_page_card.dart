import 'package:cubtale_challenge/application/search/search_cubit.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/result_card.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/result_list.dart';
import 'package:cubtale_challenge/presentation/reusable_components/buttons/primary_button.dart';
import 'package:cubtale_challenge/presentation/reusable_components/error_popup.dart';
import 'package:cubtale_challenge/presentation/reusable_components/input/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class MainPageCard extends StatelessWidget {
  MainPageCard({Key? key, required this.heading, required this.content})
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

import 'package:cubtale_challenge/presentation/reusable_components/buttons/primary_button.dart';
import 'package:cubtale_challenge/presentation/reusable_components/input/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key, required this.label, required this.type})
      : super(key: key);

  final String label;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).primaryColorDark, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: [
            Text('Search by ' + type),
            SizedBox(height: 20.h),
            Text(label),
            SizedBox(height: 10.h),
            Row(
              children: [
                SearchInput(
                  onChanged: (a) {},
                  validator: (a) {},
                ),
                PrimaryButton(onPressed: () {}, text: 'Search')
              ],
            )
          ],
        ));
  }
}

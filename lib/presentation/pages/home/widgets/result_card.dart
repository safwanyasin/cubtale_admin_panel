import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({Key? key, required this.details}) : super(key: key);

  final dynamic details;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(40.w),
            child: Image.asset(
              'assets/images/profile_image_dark.png',
              width: 200.w,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Name:',
                          style: Theme.of(context).textTheme.bodySmall),
                      SizedBox(width: 40.w),
                      Text(details['acc_name'],
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Surname:',
                          style: Theme.of(context).textTheme.bodySmall),
                      SizedBox(width: 40.w),
                      Text(details['acc_surname'],
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Verified:',
                          style: Theme.of(context).textTheme.bodySmall),
                      SizedBox(width: 40.w),
                      Text(details['acc_verified'] == 'true' ? 'Yes' : 'No',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Mail:',
                          style: Theme.of(context).textTheme.bodySmall),
                      SizedBox(width: 40.w),
                      Text(details['acc_mail'],
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Creation Date:',
                          style: Theme.of(context).textTheme.bodySmall),
                      SizedBox(width: 40.w),
                      Text(details['acc_creation_date'],
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Account ID:',
                          style: Theme.of(context).textTheme.bodySmall),
                      SizedBox(width: 40.w),
                      Text(details['acc_id'],
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}

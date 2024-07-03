import 'package:cubtale_challenge/application/auth/auth_cubit.dart';
import 'package:cubtale_challenge/presentation/reusable_components/buttons/error_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDropdown extends StatelessWidget {
  const ProfileDropdown({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 40.h, right: 20.w, left: 20.w, bottom: 20.h),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.w),
            bottomRight: Radius.circular(40.w)),
      ),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return state.maybeMap(
              authenticated: (value) {
                print(state);
                return Container(
                  width: 300.w,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/profile_image_light.png',
                          width: 200.w,
                        ),
                      ),
                      SizedBox(height: 50.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name: ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            value.user['acc_name'] +
                                ' ' +
                                value.user['acc_surname'],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          // Text(
                          //   'Demo Manager',
                          //   style: Theme.of(context).textTheme.bodyMedium,
                          // ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Role: ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            value.user['acc_role'],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          // Text(
                          //   'Owner',
                          //   style: Theme.of(context).textTheme.bodyMedium,
                          // )
                        ],
                      ),
                      SizedBox(height: 50.h),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ErrorButton(
                            onPressed: context.read<AuthCubit>().signedOut,
                            text: 'Logout'),
                      ),
                    ],
                  ),
                );
              },
              orElse: () => const Text("An error occurred"));
        },
      ),
    );
  }
}

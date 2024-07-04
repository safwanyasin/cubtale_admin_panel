import 'package:cubtale_challenge/application/search/search_cubit.dart';
import 'package:cubtale_challenge/presentation/reusable_components/buttons/primary_button.dart';
import 'package:cubtale_challenge/presentation/reusable_components/error_popup.dart';
import 'package:cubtale_challenge/presentation/reusable_components/input/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key, required this.label, required this.type})
      : super(key: key);

  final String label;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 900.w,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).highlightColor, width: 2),
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: [
            Text('Search by ' + type,
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 10.h),
            BlocConsumer<SearchCubit, SearchState>(listener: (context, state) {
              state.searchFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return ErrorPopup(
                            errorMessage: failure.map(
                              unexpected: (_) {
                                context.read<SearchCubit>().reset();
                                return 'An unexpected error occurred';
                              },
                              unableToUpdate: (_) {
                                context.read<SearchCubit>().reset();
                                return 'Unable to update';
                              },
                              insufficientPermissions: (_) {
                                context.read<SearchCubit>().reset();
                                return "You don't have sufficient permissions to carry out this action";
                              },
                              otherFailure: (_) {
                                context.read<SearchCubit>().reset();
                                return 'An unexpected error occurred!';
                              },
                            ),
                            onClose: () => Navigator.of(context).pop(),
                          );
                        });
                  },
                  (success) {
                    context.read<SearchCubit>().reset();
                  },
                ),
              );
            }, builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    child: SearchInput(
                      onChanged: (searchTerm) => context
                          .read<SearchCubit>()
                          .updateSearchTerm(searchTerm),
                      validator: (_) {},
                    ),
                  ),
                  SizedBox(width: 30.w),
                  PrimaryButton(
                      onPressed: () {
                        context.read<SearchCubit>().search(type);
                      },
                      text: 'Search')
                ],
              );
            }),
            SizedBox(height: 500.h),
          ],
        ));
  }
}

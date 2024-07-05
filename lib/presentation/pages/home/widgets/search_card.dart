import 'package:cubtale_challenge/application/search/search_cubit.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/result_card.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/result_list.dart';
import 'package:cubtale_challenge/presentation/reusable_components/buttons/primary_button.dart';
import 'package:cubtale_challenge/presentation/reusable_components/error_popup.dart';
import 'package:cubtale_challenge/presentation/reusable_components/input/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCard extends StatelessWidget {
  SearchCard({Key? key, required this.label, required this.type})
      : super(key: key);

  final String label;
  final String type;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            Text('Search by $type',
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
                    // context.read<SearchCubit>().reset();
                    // print(success);
                  },
                ),
              );
            }, builder: (context, state) {
              return Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      child: SearchInput(
                        onChanged: (searchTerm) => context
                            .read<SearchCubit>()
                            .updateSearchTerm(searchTerm),
                        // ignore: body_might_complete_normally_nullable
                        validator: (_) {},
                        type: type,
                      ),
                    ),
                    SizedBox(width: 30.w),
                    PrimaryButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<SearchCubit>().search(type);
                          }
                        },
                        text: 'Search')
                  ],
                ),
              );
            }),
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) =>
                  state.searchFailureOrSuccessOption.fold(
                () => SizedBox(
                  height: 500.h,
                  child: const Center(child: Text('Enter a query to search')),
                ),
                (either) {
                  return either.fold(
                    (failure) {
                      return SizedBox(
                        height: 500.h,
                        child: Center(
                          child: Text(
                            failure.map(
                              unexpected: (_) {
                                return 'An unexpected error occurred';
                              },
                              unableToUpdate: (_) {
                                return 'Unable to update';
                              },
                              insufficientPermissions: (_) {
                                return "You don't have sufficient permissions to carry out this action";
                              },
                              otherFailure: (_) {
                                return 'An unexpected error occurred!';
                              },
                            ),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      );
                    },
                    (success) {
                      return type == 'Date'
                          ? SizedBox(
                              height: 500.h,
                              child: Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: ResultList(users: success['users']),
                              ),
                            )
                          : Container(
                              // child: Text(success['users'][0]['acc_id'].toString()),
                              child: success['users'].length == 0
                                  ? SizedBox(
                                      height: 500.h,
                                      child: const Center(
                                          child: Text('No users found')),
                                    )
                                  : ResultCard(details: success['users'][0]),
                            );
                    },
                  );
                },
              ),
            ),
          ],
        ));
  }
}

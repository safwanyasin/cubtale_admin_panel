import 'package:cubtale_challenge/application/search/search_cubit.dart';
import 'package:cubtale_challenge/injection.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/search_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key, required this.type}) : super(key: key);

  final String type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(80.h),
      child: BlocProvider<SearchCubit>(
        create: (context) => getIt<SearchCubit>(),
        child: SearchCard(
            label: type == 'Mail'
                ? 'Email'
                : type == 'ID'
                    ? 'ID'
                    : type == 'Date'
                        ? 'Date'
                        : '',
            type: type),
      ),
    );
  }
}

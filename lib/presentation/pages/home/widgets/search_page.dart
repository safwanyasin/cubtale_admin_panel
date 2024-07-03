import 'package:cubtale_challenge/presentation/pages/home/widgets/search_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key, required this.type}) : super(key: key);

  final String type;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SearchCard(
          label: type == 'Mail'
              ? 'Email'
              : type == 'ID'
                  ? 'ID'
                  : type == 'Date'
                      ? 'Date'
                      : '',
          type: type),
    );
  }
}

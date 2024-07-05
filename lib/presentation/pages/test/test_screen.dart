import 'package:cubtale_challenge/presentation/pages/home/widgets/search_page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';

@RoutePage()
class TestingScreen extends StatelessWidget {
  const TestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPage(type: 'Mail'),
    );
  }
}
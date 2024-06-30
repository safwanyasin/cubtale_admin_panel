import 'package:cubtale_challenge/injection.dart';
import 'package:cubtale_challenge/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}

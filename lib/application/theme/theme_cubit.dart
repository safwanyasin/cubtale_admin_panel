import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:injectable/injectable.dart';

enum AppTheme { light, dark }

@injectable
class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit() : super(AppTheme.dark) {
    _loadThemePreference();
  }

  void _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool('isDarkMode') ?? true;
    emit(isDarkMode ? AppTheme.dark : AppTheme.light);
  }

  void toggleTheme() async {
    final newTheme = state == AppTheme.dark ? AppTheme.light : AppTheme.dark;
    emit(newTheme);
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', newTheme == AppTheme.dark);
  }
}

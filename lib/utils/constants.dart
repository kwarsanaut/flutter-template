## lib/utils/constants.dart
class AppConstants {
  // App Info
  static const String appName = 'Flutter Template';
  static const String appVersion = '1.0.0';
  
  // API
  static const String apiBaseUrl = 'https://jsonplaceholder.typicode.com';
  static const Duration apiTimeout = Duration(seconds: 10);
  
  // Storage Keys
  static const String userIdKey = 'user_id';
  static const String userTokenKey = 'user_token';
  static const String themeKey = 'theme_mode';
  
  // UI Constants
  static const double defaultPadding = 16.0;
  static const double defaultRadius = 12.0;
  static const double buttonHeight = 48.0;
  
  // Validation
  static const int minPasswordLength = 6;
  static const String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
}

class AppColors {
  static const primary = Color(0xFF2196F3);
  static const secondary = Color(0xFF03DAC6);
  static const error = Color(0xFFB00020);
  static const background = Color(0xFFF5F5F5);
  static const surface = Color(0xFFFFFFFF);
}

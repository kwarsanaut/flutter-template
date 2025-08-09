# Flutter Cross-Platform Template 🚀

## ✨ Features
- Cross-platform (iOS & Android)
- Material Design UI
- Bottom navigation
- HTTP API integration
- State management dengan Provider
- Custom reusable widgets
- Testing setup
- Publishing guides

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (latest stable)
- Android Studio atau VS Code
- Xcode (untuk iOS development - macOS only)

### Installation
```bash
# Clone repository
git clone https://github.com/yourusername/flutter-template.git
cd flutter-template

# Install dependencies
flutter pub get

# Run app
flutter run
```

## 🛠 Customization

### 1. Ganti Package Name
- Edit `android/app/build.gradle` → ganti `applicationId`
- Edit `ios/Runner/Info.plist` → ganti `CFBundleIdentifier`

### 2. Update App Info
- Edit `pubspec.yaml` → ganti `name` dan `description`
- Update app icons di `android/app/src/main/res/` dan `ios/Runner/Assets.xcassets/`

### 3. Customize Theme
```dart
// lib/main.dart
theme: ThemeData(
  primarySwatch: Colors.blue, // Ganti warna sesuai brand
),
```

## 📦 Publishing

### Google Play Store
```bash
# Generate keystore
keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload

# Build AAB
flutter build appbundle --release
```

### Apple App Store
```bash
# Build iOS
flutter build ios --release

# Open di Xcode untuk archive
open ios/Runner.xcworkspace
```

## 🧪 Testing
```bash
flutter test                    # Unit tests
flutter test integration_test/  # Integration tests
```

## 📚 Dependencies
- `provider` - State management
- `http` - API calls
- `shared_preferences` - Local storage

## 🤝 Contributing
1. Fork repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

## test/unit_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_template/models/user.dart';
import 'package:flutter_template/utils/constants.dart';

void main() {
  group('User Model Tests', () {
    test('User.fromJson creates correct User object', () {
      final json = {
        'id': '1',
        'name': 'John Doe',
        'email': 'john@example.com',
        'phone': '1234567890',
      };

      final user = User.fromJson(json);

      expect(user.id, '1');
      expect(user.name, 'John Doe');
      expect(user.email, 'john@example.com');
      expect(user.phone, '1234567890');
    });

    test('User.toJson creates correct JSON', () {
      final user = User(
        id: '1',
        name: 'John Doe',
        email: 'john@example.com',
        phone: '1234567890',
      );

      final json = user.toJson();

      expect(json['id'], '1');
      expect(json['name'], 'John Doe');
      expect(json['email'], 'john@example.com');
      expect(json['phone'], '1234567890');
    });

    test('User.copyWith updates only specified fields', () {
      final user = User(
        id: '1',
        name: 'John Doe',
        email: 'john@example.com',
      );

      final updatedUser = user.copyWith(name: 'Jane Doe');

      expect(updatedUser.id, '1');
      expect(updatedUser.name, 'Jane Doe');
      expect(updatedUser.email, 'john@example.com');
    });
  });

  group('Constants Tests', () {
    test('App constants have correct values', () {
      expect(AppConstants.appName, 'Flutter Template');
      expect(AppConstants.minPasswordLength, 6);
      expect(AppConstants.defaultPadding, 16.0);
    });
  });
}

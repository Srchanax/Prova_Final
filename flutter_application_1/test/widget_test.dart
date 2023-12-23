import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/models/user.dart'; // Importe o arquivo que contém a classe User

void main() {
  group('User', () {
    test('Create user', () {
      final user = User(name: 'John Doe', email: 'john@example.com');

      expect(user.name, 'John Doe');
      expect(user.email, 'john@example.com');
    });

    test('Convert user to map', () {
      final user = User(name: 'Jane Doe', email: 'jane@example.com');
      final userMap = user.toMap();

      expect(userMap, {'name': 'Jane Doe', 'email': 'jane@example.com'});
    });

    test('Create user from map', () {
      final userMap = {'name': 'Bob', 'email': 'bob@example.com'};
      final user = User.fromMap(userMap);

      expect(user.name, 'Bob');
      expect(user.email, 'bob@example.com');
    });
  });
}

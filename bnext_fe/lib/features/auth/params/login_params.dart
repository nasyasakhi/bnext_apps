import 'package:equatable/equatable.dart';

class LoginParams extends Equatable {
  const LoginParams({
    required this.password,
    required this.username,
  });

  final String? password;
  final String? username;

  @override
  List<Object?> get props => [
        password,
        username,
      ];
}

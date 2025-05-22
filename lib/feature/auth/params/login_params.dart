import 'package:equatable/equatable.dart';

class LoginParams extends Equatable {
  const LoginParams({
    required this.username,
    required this.password
  });

  final String username;
  final String password;

  @override
  List<Object?> get props => [username, password];

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}

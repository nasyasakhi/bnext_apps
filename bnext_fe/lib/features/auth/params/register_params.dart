import 'package:equatable/equatable.dart';

class RegisterParams extends Equatable {
  const RegisterParams({
    required this.confirmPassword,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.refferal,
    required this.username,
  });

  final String? confirmPassword;
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? refferal;
  final String? username;

  @override
  List<Object?> get props => [
        confirmPassword,
        email,
        password,
        phoneNumber,
        refferal,
        username,
      ];

  Map<String, dynamic> toJson() => {
        "confirm_password": confirmPassword,
        "email": email,
        "password": password,
        "phone_number": phoneNumber,
        "refferal": refferal,
        "username": username,
      };
}

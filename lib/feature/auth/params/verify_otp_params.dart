import 'package:equatable/equatable.dart';

class VerifyOtpParams extends Equatable {
  const VerifyOtpParams({
    required this.email,
    required this.otp,
  });

  final String email;
  final String otp;

  @override
  List<Object?> get props => [email, otp];

  Map<String, dynamic> toJson() => {
        "email": email,
        "otp": otp,
      };
}

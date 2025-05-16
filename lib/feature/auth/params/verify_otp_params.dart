import 'package:equatable/equatable.dart';

class VerifyOtpParams extends Equatable {
  const VerifyOtpParams({
    required this.email,
    this.otp,
  });

  final String? email;
  final int? otp;

  @override
  List<Object?> get props => [
        email,
        otp,
      ];

  Map<String, dynamic> toJson() => {
        "email": email,
        if (otp != null) "otp": otp,
      };
}

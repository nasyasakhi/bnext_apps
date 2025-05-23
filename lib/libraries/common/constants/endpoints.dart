class Endpoints {
  static const apiLogin = 'http://172.16.4.105:4000/auth';
  static const apiUser = 'http://172.16.4.105:4000/api';

  static const login = '$apiLogin/login';
  static const register = '$apiUser/register';
  static const verifOtp = '$apiUser/verify-otp';
  static const sendOtp = '$apiUser/send-otp';

  // Sesuaikan profile dengan route backend
  static String profileById(String id) => '$apiUser/profile/$id';
}

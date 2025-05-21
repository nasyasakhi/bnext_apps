class Endpoints {
  /* BASE URL */

  static const apiLogin = 'http://172.16.4.105:4000/auth';
  static const apiUser = 'http://38.47.90.76:8203/api/user';

  /* AUTH */
  static const login = '$apiLogin/login';
  static const register = '$apiUser/register';
  static const verifOtp = '$apiUser/verify-otp';
  static const sendOtp = '$apiUser/send-otp';

  /* USER */
  static const profile = '$apiUser/userProfile';
}

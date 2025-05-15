class Endpoints {
  /* BASE URL */

  static const apiLogin = 'http://38.47.90.76:8202';
  static const apiUser = 'http://38.47.90.76:8203/api/user';

  /* AUTH */
  static const login = '$apiLogin/login';
  static const register = '$apiUser/register';
  static const verifOtp = '$apiUser/verifyOtp';
  static const sendOtp = '$apiUser/sendOtp';

  /* USER */
  static const profile = '$apiUser/userProfile';
}

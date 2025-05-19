// Buat nampung semua endpoint API URL, jadi kode lebih rapi tanpa URL di setiap file nya.
class Endpoints {
  /* BASE URL */

  static const apiLogin = 'http://38.47.90.76:8202';
  static const apiUser = 'http://38.47.90.76:8203/api/user';
  // dipisah jadi dua karena kayaknya login dan user info beda port/backend service.

  /* AUTH */
  static const login = '$apiLogin/login';
  static const register = '$apiUser/register';
  static const verifOtp = '$apiUser/verifyOtp';
  static const sendOtp = '$apiUser/sendOtp';
  // buat endpoint.
  // pake $apiUser/$apiLogin biar gampang update kalo misalnya base URL-nya berubah.

  /* USER */
  static const profile = '$apiUser/userProfile';
}

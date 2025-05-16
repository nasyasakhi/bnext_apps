class Validators {
  // kode buat ngecek regex email. harus ada @, domain valid dan gak asal asalan.
  // disimpen sebagai final biar dibuat sekali dan dipake berkali kali
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  static isValidEmail(String email) {
    // Buat ngecek email, cocok gak sama regex diatas
    return _emailRegExp.hasMatch(email);
  }
  // Regex adalah singkatan dari Regular Expression alias pola atau rumus buat nyari atau nyocokin teks.
  /* jadi kalo diperhatiin = 
  1. r'.....' buat ngasih tau dart, kalo teks didalam r ini ga perlu dibaca sistem. kalo ga dikasih r, nanti sistem bisa error karna mikir \ nya sebagai pemisah karakter. r = raw (kata GPT)
  2. ^ buat ngecek harus dimulai dgn string.
  3. a-z = boleh pake smua huruf alphabet kecil
  4. A-Z = boleh pake smua huruf alphabet besar
  5. 0-9 = boleh pake smua angka, dari 0-9
  6. .!#$%&’*+/=?^_{|}~- = simbol simbol yang boleh dipake di email.
  7. + @ = harus ada @ nya. @ itu simbol domain.
  8. [a-zA-Z0-9-]+ = stelah domain, boleh pake huruf, angka. (@gmail, @yahoo)
  9. (?:...) = kayak pengelompokan sementara. tapi ga nyimpen sesuatu.
  10. \. = titik literal, jadi wajib ada kayak @gmail.com, @yahoo.co.id, @idn.sch.id.
  11 [a-zA-Z0-9-] = Setelah titik, harus ada domain yang isinya huruf, angka, atau tanda strip.
  12. * setelah titik, boleh ga ada atau malah lebih dari 1. (@domain @gmail.com @idn.sch.id).
  */
}

import 'package:intl/intl.dart';

extension XString on String {}

extension XStringNullable on String? {
  String? nullable() => (this ?? '').isNotEmpty ? this : '...';

  String get defaultValue => this ?? '';

  String? dateTolocal(String locale) => this != null
      ? DateFormat(locale, 'id_ID').format(DateTime.parse(this!))
      : null;

  bool get isStringEmpty => (this ?? '').isEmpty;

  bool get isStringNotEmpty => (this ?? '').isNotEmpty;
}

import 'package:flutter/foundation.dart';

import '../network/network.dart';

class IsolateParser<T> {
  final Map<String, dynamic> json;
  ResponseConverter<T> converter;
  IsolateParser(this.json, this.converter);
  Future<T> parseInBackground() async {
    return compute((message) => _parseListOfJson(message), json);
  }

  T _parseListOfJson(Map<String, dynamic> json) {
    return converter(json);
  }
}

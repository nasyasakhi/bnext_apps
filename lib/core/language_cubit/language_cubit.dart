import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'language_state.dart';
part 'language_cubit.freezed.dart';

@injectable
class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState.initial()) {
    loadLanguage();
  }
  
  Future<void> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('language_code') ?? 'id';
    emit(LanguageState.loaded(Locale(languageCode)));
  }

  Future<void> setLanguage(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', locale.languageCode);
    emit(LanguageState.loaded(locale));
  }
}
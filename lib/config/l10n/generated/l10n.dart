// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Language {
  Language();

  static Language? _current;

  static Language get current {
    assert(_current != null,
        'No instance of Language was loaded. Try to initialize the Language delegate before accessing Language.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Language> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Language();
      Language._current = instance;

      return instance;
    });
  }

  static Language of(BuildContext context) {
    final instance = Language.maybeOf(context);
    assert(instance != null,
        'No instance of Language present in the widget tree. Did you add Language.delegate in localizationsDelegates?');
    return instance!;
  }

  static Language? maybeOf(BuildContext context) {
    return Localizations.of<Language>(context, Language);
  }

  /// `Мой профиль`
  String get myProfile {
    return Intl.message(
      'Мой профиль',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `Избранные новости`
  String get selectedNews {
    return Intl.message(
      'Избранные новости',
      name: 'selectedNews',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get surname {
    return Intl.message(
      'Фамилия',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Никнейм`
  String get nickname {
    return Intl.message(
      'Никнейм',
      name: 'nickname',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Лимит на символы`
  String get characterLimit {
    return Intl.message(
      'Лимит на символы',
      name: 'characterLimit',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение пароля`
  String get passwordConfirmation {
    return Intl.message(
      'Подтверждение пароля',
      name: 'passwordConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get registration {
    return Intl.message(
      'Регистрация',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Уже есть логин?`
  String get alreadyHaveLogin {
    return Intl.message(
      'Уже есть логин?',
      name: 'alreadyHaveLogin',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get toComeIn {
    return Intl.message(
      'Войти',
      name: 'toComeIn',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get goOut {
    return Intl.message(
      'Выйти',
      name: 'goOut',
      desc: '',
      args: [],
    );
  }

  /// `Новости`
  String get news {
    return Intl.message(
      'Новости',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Фильтрация`
  String get filtration {
    return Intl.message(
      'Фильтрация',
      name: 'filtration',
      desc: '',
      args: [],
    );
  }

  /// `Спорт`
  String get sport {
    return Intl.message(
      'Спорт',
      name: 'sport',
      desc: '',
      args: [],
    );
  }

  /// `Политика`
  String get politics {
    return Intl.message(
      'Политика',
      name: 'politics',
      desc: '',
      args: [],
    );
  }

  /// `Звезды`
  String get stars {
    return Intl.message(
      'Звезды',
      name: 'stars',
      desc: '',
      args: [],
    );
  }

  /// `Искусство`
  String get art {
    return Intl.message(
      'Искусство',
      name: 'art',
      desc: '',
      args: [],
    );
  }

  /// `Мода`
  String get fashion {
    return Intl.message(
      'Мода',
      name: 'fashion',
      desc: '',
      args: [],
    );
  }

  /// `Применить`
  String get apply {
    return Intl.message(
      'Применить',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Заголовок новости`
  String get newsHeadline {
    return Intl.message(
      'Заголовок новости',
      name: 'newsHeadline',
      desc: '',
      args: [],
    );
  }

  /// `Читать дальше`
  String get readMore {
    return Intl.message(
      'Читать дальше',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Комментарии`
  String get comments {
    return Intl.message(
      'Комментарии',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Ответить`
  String get reply {
    return Intl.message(
      'Ответить',
      name: 'reply',
      desc: '',
      args: [],
    );
  }

  /// `Вы`
  String get you {
    return Intl.message(
      'Вы',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `Напишите комментарий`
  String get writeComment {
    return Intl.message(
      'Напишите комментарий',
      name: 'writeComment',
      desc: '',
      args: [],
    );
  }

  /// `Добавить фото`
  String get addPhoto {
    return Intl.message(
      'Добавить фото',
      name: 'addPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Обложка новости`
  String get newsCover {
    return Intl.message(
      'Обложка новости',
      name: 'newsCover',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Загрузить`
  String get download {
    return Intl.message(
      'Загрузить',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Заголовок`
  String get header {
    return Intl.message(
      'Заголовок',
      name: 'header',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Краткое описание`
  String get shortDescription {
    return Intl.message(
      'Краткое описание',
      name: 'shortDescription',
      desc: '',
      args: [],
    );
  }

  /// `Мои публикации`
  String get myPublications {
    return Intl.message(
      'Мои публикации',
      name: 'myPublications',
      desc: '',
      args: [],
    );
  }

  /// `Текст новости`
  String get newsText {
    return Intl.message(
      'Текст новости',
      name: 'newsText',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать категорию`
  String get selectCategory {
    return Intl.message(
      'Выбрать категорию',
      name: 'selectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Не выбрано`
  String get notChosen {
    return Intl.message(
      'Не выбрано',
      name: 'notChosen',
      desc: '',
      args: [],
    );
  }

  /// `Создать`
  String get create {
    return Intl.message(
      'Создать',
      name: 'create',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Language> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ky'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Language> load(Locale locale) => Language.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

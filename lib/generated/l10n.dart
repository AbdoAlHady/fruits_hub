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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `مرحبا بك في`
  String get welcomeIn {
    return Intl.message(
      'مرحبا بك في',
      name: 'welcomeIn',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get fruits {
    return Intl.message(
      'Fruit',
      name: 'fruits',
      desc: '',
      args: [],
    );
  }

  /// `HUB`
  String get hub {
    return Intl.message(
      'HUB',
      name: 'hub',
      desc: '',
      args: [],
    );
  }

  /// `تخط`
  String get skip {
    return Intl.message(
      'تخط',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `ابحث وتسوق`
  String get onBoardingTitle1 {
    return Intl.message(
      'ابحث وتسوق',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.`
  String get onBoardingSubtitle1 {
    return Intl.message(
      'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
      name: 'onBoardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية`
  String get onBoardingSubtitle2 {
    return Intl.message(
      'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
      name: 'onBoardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `ابحث وتسوق`
  String get searchAndShop {
    return Intl.message(
      'ابحث وتسوق',
      name: 'searchAndShop',
      desc: '',
      args: [],
    );
  }

  /// `ابدأ الآن`
  String get startNow {
    return Intl.message(
      'ابدأ الآن',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول`
  String get login {
    return Intl.message(
      'تسجيل الدخول',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `البريد الإلكتروني`
  String get email {
    return Intl.message(
      'البريد الإلكتروني',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get password {
    return Intl.message(
      'كلمة المرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور؟`
  String get forgotPassword {
    return Intl.message(
      'نسيت كلمة المرور؟',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `ليس لديك حساب؟`
  String get dontHaveAccount {
    return Intl.message(
      'ليس لديك حساب؟',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `قم بإنشاء حساب`
  String get createOne {
    return Intl.message(
      'قم بإنشاء حساب',
      name: 'createOne',
      desc: '',
      args: [],
    );
  }

  /// `أو`
  String get or {
    return Intl.message(
      'أو',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة فيسبوك`
  String get signInWithFacebook {
    return Intl.message(
      'تسجيل بواسطة فيسبوك',
      name: 'signInWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة جوجل`
  String get signInWithGoogle {
    return Intl.message(
      'تسجيل بواسطة جوجل',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة أبل`
  String get signInWithApple {
    return Intl.message(
      'تسجيل بواسطة أبل',
      name: 'signInWithApple',
      desc: '',
      args: [],
    );
  }

  /// `حساب جديد`
  String get newAccount {
    return Intl.message(
      'حساب جديد',
      name: 'newAccount',
      desc: '',
      args: [],
    );
  }

  /// `الاسم الكامل`
  String get fullName {
    return Intl.message(
      'الاسم الكامل',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء حساب جديد`
  String get createNewAccount {
    return Intl.message(
      'إنشاء حساب جديد',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `تمتلك حساب بالفعل؟`
  String get alreadyHaveAccount {
    return Intl.message(
      'تمتلك حساب بالفعل؟',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `من خلال إنشاء حساب ، فإنك توافق على`
  String get tremsTitle {
    return Intl.message(
      'من خلال إنشاء حساب ، فإنك توافق على',
      name: 'tremsTitle',
      desc: '',
      args: [],
    );
  }

  /// ` الشروط والأحكام الخاصة بنا`
  String get termsAndConditions {
    return Intl.message(
      ' الشروط والأحكام الخاصة بنا',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `الرجاء إدخال بريد إلكتروني صالح`
  String get validEmail {
    return Intl.message(
      'الرجاء إدخال بريد إلكتروني صالح',
      name: 'validEmail',
      desc: '',
      args: [],
    );
  }

  /// `الرجاء إدخال كلمة مرور صالحة`
  String get validPassword {
    return Intl.message(
      'الرجاء إدخال كلمة مرور صالحة',
      name: 'validPassword',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل`
  String get passwordMustContainoneUppercaseLetter {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل',
      name: 'passwordMustContainoneUppercaseLetter',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل`
  String get passwordMustContainoneLowercaseLetter {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل',
      name: 'passwordMustContainoneLowercaseLetter',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على ثمانية أرقام على الأقل`
  String get passwordMustContainEihtNumbers {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على ثمانية أرقام على الأقل',
      name: 'passwordMustContainEihtNumbers',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على حرف خاص واحد على الأقل`
  String get passwordMustContainoneSpecialCharacter {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على حرف خاص واحد على الأقل',
      name: 'passwordMustContainoneSpecialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `الرجاء إدخال اسم صالح`
  String get validFullName {
    return Intl.message(
      'الرجاء إدخال اسم صالح',
      name: 'validFullName',
      desc: '',
      args: [],
    );
  }

  /// `يجب عليك قبول الشروط والأحكام`
  String get youMustAcceptTerms {
    return Intl.message(
      'يجب عليك قبول الشروط والأحكام',
      name: 'youMustAcceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `!.تم إنشاء الحساب بنجاح`
  String get acccountCreated {
    return Intl.message(
      '!.تم إنشاء الحساب بنجاح',
      name: 'acccountCreated',
      desc: '',
      args: [],
    );
  }

  /// `!.تم تسجيل الدخول بنجاح`
  String get loginSuccess {
    return Intl.message(
      '!.تم تسجيل الدخول بنجاح',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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

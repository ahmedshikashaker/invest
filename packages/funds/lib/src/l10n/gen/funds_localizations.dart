import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'funds_localizations_ar.dart';
import 'funds_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FundsLocalizations
/// returned by `FundsLocalizations.of(context)`.
///
/// Applications need to include `FundsLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/funds_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FundsLocalizations.localizationsDelegates,
///   supportedLocales: FundsLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the FundsLocalizations.supportedLocales
/// property.
abstract class FundsLocalizations {
  FundsLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FundsLocalizations of(BuildContext context) {
    return Localizations.of<FundsLocalizations>(context, FundsLocalizations)!;
  }

  static const LocalizationsDelegate<FundsLocalizations> delegate = _FundsLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @investmentsProductsTitle.
  ///
  /// In en, this message translates to:
  /// **'Investment products'**
  String get investmentsProductsTitle;

  /// No description provided for @fundManagerTitle.
  ///
  /// In en, this message translates to:
  /// **'Fund manager'**
  String get fundManagerTitle;

  /// No description provided for @minimumInvestmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Minimum investment'**
  String get minimumInvestmentTitle;

  /// No description provided for @liquidityTitle.
  ///
  /// In en, this message translates to:
  /// **'Liquidity'**
  String get liquidityTitle;

  /// No description provided for @inceptionDateTitle.
  ///
  /// In en, this message translates to:
  /// **'Inception date'**
  String get inceptionDateTitle;

  /// No description provided for @navTitle.
  ///
  /// In en, this message translates to:
  /// **'NAV'**
  String get navTitle;

  /// No description provided for @navDateTitle.
  ///
  /// In en, this message translates to:
  /// **'NAV date'**
  String get navDateTitle;

  /// No description provided for @annualizedWeekReturnTitle.
  ///
  /// In en, this message translates to:
  /// **'Annualized 1 week return'**
  String get annualizedWeekReturnTitle;

  /// No description provided for @returnSinceInception.
  ///
  /// In en, this message translates to:
  /// **'Return since inception'**
  String get returnSinceInception;

  /// No description provided for @navPriceTitle.
  ///
  /// In en, this message translates to:
  /// **'Nav price'**
  String get navPriceTitle;

  /// No description provided for @highlightsTitle.
  ///
  /// In en, this message translates to:
  /// **'Highlights'**
  String get highlightsTitle;

  /// No description provided for @featuresTitle.
  ///
  /// In en, this message translates to:
  /// **'Features'**
  String get featuresTitle;

  /// No description provided for @articlesAssociationTitle.
  ///
  /// In en, this message translates to:
  /// **'Articles of Association(AoA)'**
  String get articlesAssociationTitle;

  /// No description provided for @factSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Fact sheet'**
  String get factSheetTitle;

  /// No description provided for @termsAndConditionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Terms and conditions'**
  String get termsAndConditionsTitle;

  /// No description provided for @registerNowTitle.
  ///
  /// In en, this message translates to:
  /// **'Register now'**
  String get registerNowTitle;

  /// No description provided for @kibInvestFundsTitle.
  ///
  /// In en, this message translates to:
  /// **'KIB Invest Funds'**
  String get kibInvestFundsTitle;

  /// No description provided for @minInvestmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Min. investment'**
  String get minInvestmentTitle;

  /// No description provided for @annualizedWeekTitle.
  ///
  /// In en, this message translates to:
  /// **'Annualized 1 week'**
  String get annualizedWeekTitle;

  /// No description provided for @fundsUnavailableEmptyStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Funds unavailable'**
  String get fundsUnavailableEmptyStateTitle;

  /// No description provided for @fundsUnavailableEmptyStateDesc.
  ///
  /// In en, this message translates to:
  /// **'List of funds are currently unavailable'**
  String get fundsUnavailableEmptyStateDesc;
}

class _FundsLocalizationsDelegate extends LocalizationsDelegate<FundsLocalizations> {
  const _FundsLocalizationsDelegate();

  @override
  Future<FundsLocalizations> load(Locale locale) {
    return SynchronousFuture<FundsLocalizations>(lookupFundsLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_FundsLocalizationsDelegate old) => false;
}

FundsLocalizations lookupFundsLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return FundsLocalizationsAr();
    case 'en': return FundsLocalizationsEn();
  }

  throw FlutterError(
    'FundsLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

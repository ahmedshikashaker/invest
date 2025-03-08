import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'onboarding_localizations_ar.dart';
import 'onboarding_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of OnboardingLocalizations
/// returned by `OnboardingLocalizations.of(context)`.
///
/// Applications need to include `OnboardingLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/onboarding_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: OnboardingLocalizations.localizationsDelegates,
///   supportedLocales: OnboardingLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the OnboardingLocalizations.supportedLocales
/// property.
abstract class OnboardingLocalizations {
  OnboardingLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static OnboardingLocalizations of(BuildContext context) {
    return Localizations.of<OnboardingLocalizations>(context, OnboardingLocalizations)!;
  }

  static const LocalizationsDelegate<OnboardingLocalizations> delegate = _OnboardingLocalizationsDelegate();

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

  /// No description provided for @authWithPAciTitle.
  ///
  /// In en, this message translates to:
  /// **'You need to authenticate with PACI first in order to unlock your onboarding steps'**
  String get authWithPAciTitle;

  /// No description provided for @authWithPAciButton.
  ///
  /// In en, this message translates to:
  /// **'Authenticate PACI'**
  String get authWithPAciButton;

  /// No description provided for @setUpYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Set up your profile'**
  String get setUpYourProfile;

  /// No description provided for @shareYourDetailsToGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Share your details to get started'**
  String get shareYourDetailsToGetStarted;

  /// No description provided for @stepsDescription.
  ///
  /// In en, this message translates to:
  /// **'Take the first step towards growing your wealth,share your details to start investing with us'**
  String get stepsDescription;

  /// No description provided for @continueTo.
  ///
  /// In en, this message translates to:
  /// **'Continue to '**
  String get continueTo;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @continueWord.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueWord;

  /// No description provided for @continueToTheNextStep.
  ///
  /// In en, this message translates to:
  /// **'Continue to the next step'**
  String get continueToTheNextStep;

  /// No description provided for @saveAndExit.
  ///
  /// In en, this message translates to:
  /// **'Save and exit'**
  String get saveAndExit;

  /// No description provided for @authorizeSharePersonalInformation.
  ///
  /// In en, this message translates to:
  /// **'I authorize to share my personal information with KIB invest'**
  String get authorizeSharePersonalInformation;

  /// No description provided for @uploadTheFile.
  ///
  /// In en, this message translates to:
  /// **'Upload the file'**
  String get uploadTheFile;

  /// No description provided for @uploadComponentOptionCamera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get uploadComponentOptionCamera;

  /// No description provided for @uploadComponentOptionFile.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get uploadComponentOptionFile;

  /// No description provided for @uploadComponentOptionGallery.
  ///
  /// In en, this message translates to:
  /// **'Photo gallery'**
  String get uploadComponentOptionGallery;

  /// No description provided for @pleaseEnableCameraPermission.
  ///
  /// In en, this message translates to:
  /// **'Please enable camera permission'**
  String get pleaseEnableCameraPermission;

  /// No description provided for @pleaseEnablePhotoPermission.
  ///
  /// In en, this message translates to:
  /// **'Please enable photo permission'**
  String get pleaseEnablePhotoPermission;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @upTo.
  ///
  /// In en, this message translates to:
  /// **'up to'**
  String get upTo;

  /// No description provided for @complete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;
}

class _OnboardingLocalizationsDelegate extends LocalizationsDelegate<OnboardingLocalizations> {
  const _OnboardingLocalizationsDelegate();

  @override
  Future<OnboardingLocalizations> load(Locale locale) {
    return SynchronousFuture<OnboardingLocalizations>(lookupOnboardingLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_OnboardingLocalizationsDelegate old) => false;
}

OnboardingLocalizations lookupOnboardingLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return OnboardingLocalizationsAr();
    case 'en': return OnboardingLocalizationsEn();
  }

  throw FlutterError(
    'OnboardingLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

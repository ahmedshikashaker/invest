import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'authentication_localizations_ar.dart';
import 'authentication_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AuthenticationLocalizations
/// returned by `AuthenticationLocalizations.of(context)`.
///
/// Applications need to include `AuthenticationLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/authentication_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticationLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticationLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AuthenticationLocalizations.supportedLocales
/// property.
abstract class AuthenticationLocalizations {
  AuthenticationLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AuthenticationLocalizations of(BuildContext context) {
    return Localizations.of<AuthenticationLocalizations>(
        context, AuthenticationLocalizations)!;
  }

  static const LocalizationsDelegate<AuthenticationLocalizations> delegate =
      _AuthenticationLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
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

  /// Title text displayed at the top of the user registration screen.
  ///
  /// In en, this message translates to:
  /// **'User Registration'**
  String get authenticationRegistrationTitleUserRegistration;

  /// Subtitle instructing users to fill out their email and choose a password.
  ///
  /// In en, this message translates to:
  /// **'Start providing your details, enter your email ID and choose your password'**
  String get authenticationRegistrationSubtitleStartProvidingYourDetails;

  /// Label for the email input field.
  ///
  /// In en, this message translates to:
  /// **'Email ID'**
  String get authenticationRegistrationLabelEmail;

  /// Label for the password input field.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get authenticationRegistrationLabelPassword;

  /// Label for the confirm password input field.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get authenticationRegistrationLabelConfirmPassword;

  /// Text for the primary button to continue registration.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get authenticationRegistrationButtonContinue;

  /// Heading text for password requirement specifications.
  ///
  /// In en, this message translates to:
  /// **'Your password must contain:'**
  String get authenticationRegistrationRequirementsTitle;

  /// Describes the minimum and maximum password length.
  ///
  /// In en, this message translates to:
  /// **'8 to 20 characters'**
  String get authenticationRegistrationRequirementsLength;

  /// Requirement specifying password composition.
  ///
  /// In en, this message translates to:
  /// **'One uppercase, one lowercase letter, one number and one special character'**
  String
      get authenticationRegistrationRequirementsUpperAndLowerAndNumberAndSpecialCharacter;

  /// Requirement that password and confirm password fields match.
  ///
  /// In en, this message translates to:
  /// **'Must match the password and confirm password'**
  String get authenticationRegistrationRequirementsPasswordMatch;

  /// Prompt title for users to enter the verification code sent to their email.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code'**
  String get authenticationEmailOTPTitle;

  /// Title displayed at the top when collecting personal details.
  ///
  /// In en, this message translates to:
  /// **'User Registration'**
  String get authenticationPersonalDetailsRegistrationTitleUserRegistration;

  /// Subtitle instructing the user to provide personal details.
  ///
  /// In en, this message translates to:
  /// **'Fill in your personal details'**
  String
      get authenticationPersonalDetailsRegistrationSutitleFillYourPersonalDetails;

  /// Label for the civil ID field.
  ///
  /// In en, this message translates to:
  /// **'Civil Id'**
  String get authenticationPersonalDetailsRegistrationCivilId;

  /// Label for the mobile number field.
  ///
  /// In en, this message translates to:
  /// **'Mobile number'**
  String get authenticationPersonalDetailsRegistrationMobileNumber;

  /// Button text for continuing after entering personal details.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get authenticationPersonalDetailsRegistrationButtonContinue;

  /// Prompt title for users to enter the verification code sent to their mobile.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code'**
  String get authenticationMobileNumberOTPTitle;

  /// Message displayed when registration is successful (includes a line break).
  ///
  /// In en, this message translates to:
  /// **'Congratulations\nYou\'re all set!'**
  String get authenticationRegistrationSuccessTitle;

  /// Short message confirming successful registration.
  ///
  /// In en, this message translates to:
  /// **'You have successfully registered'**
  String get authenticationRegistrationSuccessDescripation;

  /// Button text displayed on the registration success screen.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get authenticationRegistrationSuccessButton;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get getStarted;

  /// No description provided for @onBoardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Invest the Shariah-Compliant Way'**
  String get onBoardingTitle1;

  /// No description provided for @onBoardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Secure, Flexible, Ethical'**
  String get onBoardingTitle2;

  /// No description provided for @onBoardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Start your investment journey'**
  String get onBoardingTitle3;

  /// No description provided for @onBoardingDescription1.
  ///
  /// In en, this message translates to:
  /// **'Start your Shariah-compliant journey with stable and secure returns.'**
  String get onBoardingDescription1;

  /// No description provided for @onBoardingDescription2.
  ///
  /// In en, this message translates to:
  /// **'Flexible, ethical investments that preserve and grow your wealth.'**
  String get onBoardingDescription2;

  /// No description provided for @onBoardingDescription3.
  ///
  /// In en, this message translates to:
  /// **'Open your account and make your first investment in just a few simple steps.'**
  String get onBoardingDescription3;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @exploreInvestmentOpportunities.
  ///
  /// In en, this message translates to:
  /// **'Explore investment opportunities'**
  String get exploreInvestmentOpportunities;

  /// No description provided for @neverUsedOnlineKIBInvestBefore.
  ///
  /// In en, this message translates to:
  /// **'Never used online KIB Invest before?'**
  String get neverUsedOnlineKIBInvestBefore;

  /// No description provided for @registerNow.
  ///
  /// In en, this message translates to:
  /// **'Register now'**
  String get registerNow;

  /// No description provided for @loginDetails.
  ///
  /// In en, this message translates to:
  /// **'Login details'**
  String get loginDetails;

  /// No description provided for @pleaseEnterYourEmailIDAndPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your Email ID and password'**
  String get pleaseEnterYourEmailIDAndPassword;

  /// No description provided for @emailID.
  ///
  /// In en, this message translates to:
  /// **'Email ID'**
  String get emailID;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @paciAuthenticationFailedTitle.
  ///
  /// In en, this message translates to:
  /// **'Authentication Failed'**
  String get paciAuthenticationFailedTitle;

  /// No description provided for @paciAuthenticationFailedDescription.
  ///
  /// In en, this message translates to:
  /// **'Your PACI authentication request has been rejected'**
  String get paciAuthenticationFailedDescription;

  /// No description provided for @paciAuthHeader.
  ///
  /// In en, this message translates to:
  /// **'Authorize Kuwait Mobile ID'**
  String get paciAuthHeader;

  /// No description provided for @reAuthPaciHeader.
  ///
  /// In en, this message translates to:
  /// **'Re-Authenticate'**
  String get reAuthPaciHeader;

  /// No description provided for @paciAuthSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'PACI authentication was successful'**
  String get paciAuthSuccessTitle;

  /// No description provided for @paciAuthSuccessDesc.
  ///
  /// In en, this message translates to:
  /// **'Please review your information and continue to complete the onboarding process.'**
  String get paciAuthSuccessDesc;

  /// No description provided for @continueTitle.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueTitle;

  /// No description provided for @englishNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Name in English'**
  String get englishNameTitle;

  /// No description provided for @arabicNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Name in Arabic'**
  String get arabicNameTitle;

  /// No description provided for @civilIdTitle.
  ///
  /// In en, this message translates to:
  /// **'Civil ID'**
  String get civilIdTitle;

  /// No description provided for @civilIdExpiryDateTitle.
  ///
  /// In en, this message translates to:
  /// **'Civil ID expiry date'**
  String get civilIdExpiryDateTitle;

  /// No description provided for @dateOfBirthTitle.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateOfBirthTitle;

  /// No description provided for @nationalityTitle.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationalityTitle;

  /// No description provided for @genderTitle.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get genderTitle;

  /// No description provided for @addressTitle.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get addressTitle;

  /// No description provided for @openPaciAndAcceptTitle.
  ///
  /// In en, this message translates to:
  /// **'Please open the app and accept the request under'**
  String get openPaciAndAcceptTitle;

  /// No description provided for @authPaciAndSignTitle.
  ///
  /// In en, this message translates to:
  /// **'\'Authenticate & Sign\' tab'**
  String get authPaciAndSignTitle;

  /// No description provided for @paciAuthRequestSentTitle.
  ///
  /// In en, this message translates to:
  /// **'An authentication request has been submitted to your Kuwait Mobile ID app and is awaiting your verification.'**
  String get paciAuthRequestSentTitle;

  /// No description provided for @paciAuthExpiresInTitle.
  ///
  /// In en, this message translates to:
  /// **'Authentication request expires in'**
  String get paciAuthExpiresInTitle;

  /// No description provided for @didYouForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get didYouForgotPassword;

  /// No description provided for @civilID.
  ///
  /// In en, this message translates to:
  /// **'Civil id'**
  String get civilID;

  /// No description provided for @pleaseEnterYourCivilIDAndPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter your civil ID and phone number'**
  String get pleaseEnterYourCivilIDAndPhoneNumber;

  /// No description provided for @buttonContinue.
  ///
  /// In en, this message translates to:
  /// **'continue'**
  String get buttonContinue;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile number'**
  String get mobileNumber;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @passwordMustAtLeastBe.
  ///
  /// In en, this message translates to:
  /// **'Password must at least be:'**
  String get passwordMustAtLeastBe;

  /// No description provided for @passwordLength.
  ///
  /// In en, this message translates to:
  /// **'8 to 20 characters'**
  String get passwordLength;

  /// No description provided for @validPassword.
  ///
  /// In en, this message translates to:
  /// **'One uppercase, one lowercase letter, one number and one special character'**
  String get validPassword;

  /// No description provided for @passwordMatching.
  ///
  /// In en, this message translates to:
  /// **'Must match the password and confirm password'**
  String get passwordMatching;

  /// No description provided for @congratulationsYouAllSet.
  ///
  /// In en, this message translates to:
  /// **'Congratulations, you’re all set!'**
  String get congratulationsYouAllSet;

  /// No description provided for @yourPasswordHasBeenUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your password has been updated'**
  String get yourPasswordHasBeenUpdated;
}

class _AuthenticationLocalizationsDelegate
    extends LocalizationsDelegate<AuthenticationLocalizations> {
  const _AuthenticationLocalizationsDelegate();

  @override
  Future<AuthenticationLocalizations> load(Locale locale) {
    return SynchronousFuture<AuthenticationLocalizations>(
        lookupAuthenticationLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticationLocalizationsDelegate old) => false;
}

AuthenticationLocalizations lookupAuthenticationLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AuthenticationLocalizationsAr();
    case 'en':
      return AuthenticationLocalizationsEn();
  }

  throw FlutterError(
      'AuthenticationLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

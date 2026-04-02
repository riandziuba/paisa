import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// The app name
  ///
  /// In en, this message translates to:
  /// **'Paisa'**
  String get appTitle;

  /// Home label
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Category label
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// Add Category label
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get addCategory;

  /// Add Expense label
  ///
  /// In en, this message translates to:
  /// **'Add Expense'**
  String get addExpense;

  /// Update Expense label
  ///
  /// In en, this message translates to:
  /// **'Update Expense'**
  String get updateExpense;

  /// Add Account label
  ///
  /// In en, this message translates to:
  /// **'Add Account'**
  String get addAccount;

  /// Categories label
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// Accounts label
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accounts;

  /// Budget label
  ///
  /// In en, this message translates to:
  /// **'Budget'**
  String get budget;

  /// Budget label
  ///
  /// In en, this message translates to:
  /// **'Hi, {username}'**
  String welcomeMessage(String username);

  /// Settings label
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Total label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// Yesterday label
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// Last 7 days label
  ///
  /// In en, this message translates to:
  /// **'Last 7 days'**
  String get lastSeventDays;

  /// Last 30 Days label
  ///
  /// In en, this message translates to:
  /// **'Last 30 Days'**
  String get lastThirtyDays;

  /// Income label
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// Expense label
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get expense;

  /// Expenses label
  ///
  /// In en, this message translates to:
  /// **'Expenses'**
  String get expenses;

  /// Deposit label
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// Daily label
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// Weekly label
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// Monthly label
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// Yearly label
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearly;

  /// All label
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// Transaction history label
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get transactionHistory;

  /// Select category icon label
  ///
  /// In en, this message translates to:
  /// **'Select category icon'**
  String get selectCategoryIcon;

  /// Description label
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// Cash label
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// Debit Card label
  ///
  /// In en, this message translates to:
  /// **'Debit Card'**
  String get debitCard;

  /// Credit Card label
  ///
  /// In en, this message translates to:
  /// **'Credit Card'**
  String get creditCard;

  /// Card holder name label
  ///
  /// In en, this message translates to:
  /// **'Card holder name'**
  String get cardHoder;

  /// Account label
  ///
  /// In en, this message translates to:
  /// **'Account name'**
  String get accountName;

  /// Last four digit number label
  ///
  /// In en, this message translates to:
  /// **'Last four digit number'**
  String get lastFourDigit;

  /// Add card label
  ///
  /// In en, this message translates to:
  /// **'Add card'**
  String get addCard;

  /// Account added label
  ///
  /// In en, this message translates to:
  /// **'Account added'**
  String get addedCard;

  /// Account updated label
  ///
  /// In en, this message translates to:
  /// **'Account updated'**
  String get updatedCard;

  /// Account deleted label
  ///
  /// In en, this message translates to:
  /// **'Account deleted'**
  String get deletedCard;

  /// Category added succesful label
  ///
  /// In en, this message translates to:
  /// **'Category added succesful'**
  String get successAddCategory;

  /// Enter valid name label
  ///
  /// In en, this message translates to:
  /// **'Enter valid name'**
  String get validName;

  /// Profile label
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Theme label
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// Reimder label
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get reminder;

  /// Show schedule notifications to add expense label
  ///
  /// In en, this message translates to:
  /// **'Show schedule notifications to add expense'**
  String get reminderDescription;

  /// Biometric label
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication'**
  String get biometric;

  /// Export data to excel label
  ///
  /// In en, this message translates to:
  /// **'Export data to excel'**
  String get exportExpenses;

  /// All expenses will be exported as a CSV file to share label
  ///
  /// In en, this message translates to:
  /// **'All expenses will be exported as a CSV file to share'**
  String get exportExpensesDescription;

  /// Choose theme label
  ///
  /// In en, this message translates to:
  /// **'Choose theme'**
  String get chooseTheme;

  /// Update label
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// User name label
  ///
  /// In en, this message translates to:
  /// **'User name'**
  String get userName;

  /// Select country label
  ///
  /// In en, this message translates to:
  /// **'Select country'**
  String get selecteCountry;

  /// Error authentication label
  ///
  /// In en, this message translates to:
  /// **'Error authentication'**
  String get errorAuth;

  /// No cards label
  ///
  /// In en, this message translates to:
  /// **'Empty in cards'**
  String get errorNoCards;

  /// No cards description label
  ///
  /// In en, this message translates to:
  /// **'Add expenses and will show up here'**
  String get errorNoCardsDescription;

  /// No categories label
  ///
  /// In en, this message translates to:
  /// **'Empty in categories'**
  String get errorNoCatgories;

  /// No category description label
  ///
  /// In en, this message translates to:
  /// **'Add some categories and will show up here'**
  String get errorNoCategoriesDescription;

  /// Empty in budget overview label
  ///
  /// In en, this message translates to:
  /// **'Empty in budget overview'**
  String get errorNoBudget;

  /// No budget overview description label
  ///
  /// In en, this message translates to:
  /// **'Add some expenses and budget overview will show up here'**
  String get errorNoBudgetDescription;

  /// CardHolder label
  ///
  /// In en, this message translates to:
  /// **'CardHolder'**
  String get cardholder;

  /// Expense added label
  ///
  /// In en, this message translates to:
  /// **'Expense added'**
  String get expenseAddedSuccessful;

  /// Expense updated label
  ///
  /// In en, this message translates to:
  /// **'Expense updated'**
  String get expenseUpdateSuccessful;

  /// Expense deleted label
  ///
  /// In en, this message translates to:
  /// **'Expense deleted'**
  String get expenseDeletedSuccessful;

  /// Expense name label
  ///
  /// In en, this message translates to:
  /// **'Expense name'**
  String get expenseName;

  /// Amount label
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// Enter valid amount label
  ///
  /// In en, this message translates to:
  /// **'Enter valid amount'**
  String get validAmount;

  /// date label
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// Select date label
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get validDate;

  /// add label
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// Select account label
  ///
  /// In en, this message translates to:
  /// **'Select account'**
  String get selectAccount;

  /// Select category label
  ///
  /// In en, this message translates to:
  /// **'Select category'**
  String get selectCategory;

  /// Social links label
  ///
  /// In en, this message translates to:
  /// **'Social links'**
  String get socialLinks;

  /// Telegram label
  ///
  /// In en, this message translates to:
  /// **'Telegram'**
  String get telegram;

  /// A group to follow and post bugs and feature requests label
  ///
  /// In en, this message translates to:
  /// **'A group to follow and post bugs and feature requests'**
  String get telegramGroup;

  /// Budget overview label
  ///
  /// In en, this message translates to:
  /// **'Budget overview'**
  String get budgetOverView;

  /// No result found label
  ///
  /// In en, this message translates to:
  /// **'No result found'**
  String get noResultFound;

  /// No category label
  ///
  /// In en, this message translates to:
  /// **'No category selected'**
  String get noCategory;

  /// No account label
  ///
  /// In en, this message translates to:
  /// **'No account selected'**
  String get noAccountAvailable;

  /// Privacy & Policy label
  ///
  /// In en, this message translates to:
  /// **'Privacy & Policy'**
  String get privacyPolicy;

  /// Github label
  ///
  /// In en, this message translates to:
  /// **'Github'**
  String get github;

  /// Github label
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// Version number label
  ///
  /// In en, this message translates to:
  /// **'v{version}'**
  String versionNumber(String version);

  /// Category updated label
  ///
  /// In en, this message translates to:
  /// **'Category updated'**
  String get updatedCategory;

  /// Done label
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Cancel label
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Custom label
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// Accent color label
  ///
  /// In en, this message translates to:
  /// **'Accent color'**
  String get accentColor;

  /// Dynamic label
  ///
  /// In en, this message translates to:
  /// **'Dynamic'**
  String get dynamicColor;

  /// Pick color label
  ///
  /// In en, this message translates to:
  /// **'Pick color'**
  String get pickColor;

  /// Colors label
  ///
  /// In en, this message translates to:
  /// **'Colors'**
  String get colors;

  /// Others label
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// GitHub text label
  ///
  /// In en, this message translates to:
  /// **'Fork the project on GitHub'**
  String get githubText;

  /// Made with ♥ in India label
  ///
  /// In en, this message translates to:
  /// **'Made with ♥ in India'**
  String get madeWithLoveInIndia;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

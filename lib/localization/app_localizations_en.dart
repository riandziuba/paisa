// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Paisa';

  @override
  String get home => 'Home';

  @override
  String get category => 'Category';

  @override
  String get addCategory => 'Add Category';

  @override
  String get addExpense => 'Add Expense';

  @override
  String get updateExpense => 'Update Expense';

  @override
  String get addAccount => 'Add Account';

  @override
  String get categories => 'Categories';

  @override
  String get accounts => 'Accounts';

  @override
  String get budget => 'Budget';

  @override
  String welcomeMessage(String username) {
    return 'Hi, $username';
  }

  @override
  String get settings => 'Settings';

  @override
  String get total => 'Total';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get lastSeventDays => 'Last 7 days';

  @override
  String get lastThirtyDays => 'Last 30 Days';

  @override
  String get income => 'Income';

  @override
  String get expense => 'Expense';

  @override
  String get expenses => 'Expenses';

  @override
  String get deposit => 'Deposit';

  @override
  String get daily => 'Daily';

  @override
  String get weekly => 'Weekly';

  @override
  String get monthly => 'Monthly';

  @override
  String get yearly => 'Yearly';

  @override
  String get all => 'All';

  @override
  String get transactionHistory => 'Transaction History';

  @override
  String get selectCategoryIcon => 'Select category icon';

  @override
  String get description => 'Description';

  @override
  String get cash => 'Cash';

  @override
  String get debitCard => 'Debit Card';

  @override
  String get creditCard => 'Credit Card';

  @override
  String get cardHoder => 'Card holder name';

  @override
  String get accountName => 'Account name';

  @override
  String get lastFourDigit => 'Last four digit number';

  @override
  String get addCard => 'Add card';

  @override
  String get addedCard => 'Account added';

  @override
  String get updatedCard => 'Account updated';

  @override
  String get deletedCard => 'Account deleted';

  @override
  String get successAddCategory => 'Category added succesful';

  @override
  String get validName => 'Enter valid name';

  @override
  String get profile => 'Profile';

  @override
  String get theme => 'Theme';

  @override
  String get reminder => 'Reminder';

  @override
  String get reminderDescription =>
      'Show schedule notifications to add expense';

  @override
  String get biometric => 'Biometric authentication';

  @override
  String get exportExpenses => 'Export data to excel';

  @override
  String get exportExpensesDescription =>
      'All expenses will be exported as a CSV file to share';

  @override
  String get chooseTheme => 'Choose theme';

  @override
  String get update => 'Update';

  @override
  String get userName => 'User name';

  @override
  String get selecteCountry => 'Select country';

  @override
  String get errorAuth => 'Error authentication';

  @override
  String get errorNoCards => 'Empty in cards';

  @override
  String get errorNoCardsDescription => 'Add expenses and will show up here';

  @override
  String get errorNoCatgories => 'Empty in categories';

  @override
  String get errorNoCategoriesDescription =>
      'Add some categories and will show up here';

  @override
  String get errorNoBudget => 'Empty in budget overview';

  @override
  String get errorNoBudgetDescription =>
      'Add some expenses and budget overview will show up here';

  @override
  String get cardholder => 'CardHolder';

  @override
  String get expenseAddedSuccessful => 'Expense added';

  @override
  String get expenseUpdateSuccessful => 'Expense updated';

  @override
  String get expenseDeletedSuccessful => 'Expense deleted';

  @override
  String get expenseName => 'Expense name';

  @override
  String get amount => 'Amount';

  @override
  String get validAmount => 'Enter valid amount';

  @override
  String get date => 'Date';

  @override
  String get validDate => 'Select date';

  @override
  String get add => 'Add';

  @override
  String get selectAccount => 'Select account';

  @override
  String get selectCategory => 'Select category';

  @override
  String get socialLinks => 'Social links';

  @override
  String get telegram => 'Telegram';

  @override
  String get telegramGroup =>
      'A group to follow and post bugs and feature requests';

  @override
  String get budgetOverView => 'Budget overview';

  @override
  String get noResultFound => 'No result found';

  @override
  String get noCategory => 'No category selected';

  @override
  String get noAccountAvailable => 'No account selected';

  @override
  String get privacyPolicy => 'Privacy & Policy';

  @override
  String get github => 'Github';

  @override
  String get version => 'Version';

  @override
  String versionNumber(String version) {
    return 'v$version';
  }

  @override
  String get updatedCategory => 'Category updated';

  @override
  String get done => 'Done';

  @override
  String get cancel => 'Cancel';

  @override
  String get custom => 'Custom';

  @override
  String get accentColor => 'Accent color';

  @override
  String get dynamicColor => 'Dynamic';

  @override
  String get pickColor => 'Pick color';

  @override
  String get colors => 'Colors';

  @override
  String get others => 'Others';

  @override
  String get githubText => 'Fork the project on GitHub';

  @override
  String get madeWithLoveInIndia => 'Made with ♥ in India';
}

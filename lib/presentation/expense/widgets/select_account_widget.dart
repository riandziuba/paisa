import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:collection/collection.dart';
import '../../../app/routes.dart';
import '../../../common/enum/card_type.dart';
import '../../../data/accounts/model/account.dart';
import '../../../di/service_locator.dart';
import '../../accounts/bloc/accounts_bloc.dart';

class SelectedAccount extends StatefulWidget {
  const SelectedAccount({
    Key? key,
    required this.onSelected,
    required this.accountId,
  }) : super(key: key);

  final Function(Account) onSelected;
  final int accountId;

  @override
  State<SelectedAccount> createState() => _SelectedAccountState();
}

class _SelectedAccountState extends State<SelectedAccount> {
  final AccountsBloc accountsBloc = locator.get();
  Account? selectedAccount;
  int accountId = 0;

  @override
  void initState() {
    super.initState();
    accountsBloc.add(FetchAccountsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: accountsBloc,
      buildWhen: (previous, current) => current is AccountListState,
      builder: (context, state) {
        if (state is AccountListState) {
          final accounts = state.accounts;
          if (accounts.isEmpty) {
            return ListTile(
              onTap: () async {
                await Navigator.pushNamed(context, addAccountCardScreen);
                accountsBloc.add(FetchAccountsEvent());
              },
              title: Text(AppLocalizations.of(context)!.addAccount),
              subtitle: Text(AppLocalizations.of(context)!.noAccountAvailable),
              trailing: const Icon(Icons.keyboard_arrow_right),
            );
          }
          selectedAccount = accounts.firstWhereOrNull(
              (element) => element.superId == widget.accountId);
          if (selectedAccount != null) {
            accountId = accounts.indexOf(selectedAccount!);
          } else {
            selectedAccount = accounts.first;
          }
          widget.onSelected(accounts[accountId]);

          return ScreenTypeLayout(
            tablet: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    AppLocalizations.of(context)!.selectAccount,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                ),
                SelectedItem(
                  accounts: accounts,
                  onSelected: (account) {
                    selectedAccount = account;
                    widget.onSelected(account);
                    debugPrint("SelectedItem: ${account.superId}");
                    setState(() {});
                  },
                  account: selectedAccount!,
                )
              ],
            ),
            mobile: ListTile(
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  context: context,
                  builder: (_) {
                    return SafeArea(
                      maintainBottomViewPadding: true,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              AppLocalizations.of(context)!.selectAccount,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SelectedItem(
                            accounts: accounts,
                            onSelected: (account) {
                              selectedAccount = account;
                              widget.onSelected(account);
                              debugPrint("SelectedItem: ${account.superId}");
                            },
                            account: selectedAccount!,
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              title: Text(
                AppLocalizations.of(context)!.selectAccount,
              ),
              subtitle: Text(selectedAccount!.name),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class SelectedItem extends StatefulWidget {
  const SelectedItem({
    Key? key,
    required this.accounts,
    required this.onSelected,
    required this.account,
  }) : super(key: key);

  final List<Account> accounts;
  final Function(Account) onSelected;
  final Account account;

  @override
  SelectedItemState createState() => SelectedItemState();
}

class SelectedItemState extends State<SelectedItem> {
  late Account selectedAccount = widget.account;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        padding: const EdgeInsets.only(
          bottom: 16,
          left: 16,
          right: 16,
        ),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widget.accounts.length,
        itemBuilder: (_, index) {
          final account = widget.accounts[index];
          return AspectRatio(
            aspectRatio: 10 / 14,
            child: Card(
              color: Theme.of(context).colorScheme.surface,
              clipBehavior: Clip.antiAlias,
              shape: selectedAccount == account
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                    )
                  : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
              child: InkWell(
                onTap: () {
                  selectedAccount = account;
                  setState(() {
                    widget.onSelected(account);
                  });
                  debugPrint("onTap: ${account.superId}");
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        account.cardType!.icon,
                        size: 32,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        account.name,
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16,
                        left: 16,
                        right: 16,
                        top: 4,
                      ),
                      child: Text(
                        account.bankName,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/accountsgrid_item_model.dart';
import 'package:test/presentation/accounts_screen/models/accounts_model.dart';
part 'accounts_state.dart';

final accountsNotifier = StateNotifierProvider<AccountsNotifier, AccountsState>(
    (ref) => AccountsNotifier(AccountsState(
        searchController: TextEditingController(),
        accountsModelObj: AccountsModel(accountsgridItemList: [
          AccountsgridItemModel(
              moneyTagOne: ImageConstant.imgMoneyTag1,
              myBalance: "My Balance",
              price: "12,750"),
          AccountsgridItemModel(
              moneyTagOne: ImageConstant.imgGroup747,
              myBalance: "Income",
              price: "5,600"),
          AccountsgridItemModel(
              moneyTagOne: ImageConstant.img001Medical,
              myBalance: "Expense",
              price: "3,460"),
          AccountsgridItemModel(
              moneyTagOne: ImageConstant.img003Saving,
              myBalance: "Total Saving",
              price: "7,920")
        ]))));

/// A notifier that manages the state of a Accounts according to the event that is dispatched to it.
class AccountsNotifier extends StateNotifier<AccountsState> {
  AccountsNotifier(AccountsState state) : super(state);
}

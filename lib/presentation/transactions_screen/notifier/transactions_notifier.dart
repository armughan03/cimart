import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/balance1_item_model.dart';
import '../models/arrow_item_model.dart';
import 'package:test/presentation/transactions_screen/models/transactions_model.dart';
part 'transactions_state.dart';

final transactionsNotifier =
    StateNotifierProvider<TransactionsNotifier, TransactionsState>(
        (ref) => TransactionsNotifier(TransactionsState(
            searchController: TextEditingController(),
            transactionsModelObj: TransactionsModel(balance1ItemList: [
              Balance1ItemModel(
                  balance: "Balance",
                  price: "5,756",
                  cardholder: "CARD HOLDER",
                  eddyCusuma: "Eddy Cusuma",
                  validthru: "VALID THRU",
                  oneThousandTwoHundredTwentyTwo: "12/22",
                  thirtySevenMillionSevenHundred: "3778 **** **** 1234"),
              Balance1ItemModel(
                  balance: "Balance",
                  price: "5,756",
                  cardholder: "CARD HOLDER",
                  eddyCusuma: "Eddy Cusuma",
                  validthru: "VALID THRU",
                  oneThousandTwoHundredTwentyTwo: "12/22",
                  thirtySevenMillionSevenHundred: "3778 **** **** 1234")
            ], arrowItemList: [
              ArrowItemModel(
                  arrow: ImageConstant.imgArrowGreen600,
                  freepikSales: "Freepik Sales",
                  time: "25 Jan, 10.40 PM",
                  price: "+750"),
              ArrowItemModel(
                  arrow: ImageConstant.imgArrow,
                  freepikSales: "Mobile Service",
                  time: "20 Jan, 10.40 PM",
                  price: "-150"),
              ArrowItemModel(
                  arrow: ImageConstant.imgArrow,
                  freepikSales: "Wilson",
                  time: "15 Jan, 03.29 PM",
                  price: "-1050"),
              ArrowItemModel(
                  arrow: ImageConstant.imgArrowGreen600,
                  freepikSales: "Emilly",
                  time: "14 Jan, 10.40 PM",
                  price: "+840")
            ]))));

/// A notifier that manages the state of a Transactions according to the event that is dispatched to it.
class TransactionsNotifier extends StateNotifier<TransactionsState> {
  TransactionsNotifier(TransactionsState state) : super(state);
}

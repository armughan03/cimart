import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/balance2_item_model.dart';
import '../models/creditcards_item_model.dart';
import 'package:test/presentation/credit_cards_screen/models/credit_cards_model.dart';
part 'credit_cards_state.dart';

final creditCardsNotifier =
    StateNotifierProvider<CreditCardsNotifier, CreditCardsState>(
  (ref) => CreditCardsNotifier(CreditCardsState(
    searchController: TextEditingController(),
    classicController: TextEditingController(),
    nameController: TextEditingController(),
    cardNumberController: TextEditingController(),
    expirationDateController: TextEditingController(),
    sliderIndex: 0,
    creditCardsModelObj: CreditCardsModel(balance2ItemList: [
      Balance2ItemModel(
          balance: "Balance",
          fiveThousandSevenHundredFiftyS: "5,756",
          cardholder: "CARD HOLDER",
          eddyCusuma: "Eddy Cusuma",
          validthru: "VALID THRU",
          oneThousandTwoHundredTwentyTwo: "12/22",
          thirtySevenMillionSevenHundred: "3778 **** **** 1234")
    ], creditcardsItemList: [
      CreditcardsItemModel(
          cardType: "Card Type",
          secondary: "Secondary",
          bank: "Bank",
          dBLBank: "DBL Bank",
          viewDetails: "View Details"),
      CreditcardsItemModel(
          cardType: "Card Type",
          secondary: "Secondary",
          bank: "Bank",
          dBLBank: "BRC Bank",
          viewDetails: "View Details"),
      CreditcardsItemModel(
          cardType: "Card Type",
          secondary: "Secondary",
          bank: "Bank",
          dBLBank: "ABM Bank",
          viewDetails: "View Details")
    ]),
  )),
);

/// A notifier that manages the state of a CreditCards according to the event that is dispatched to it.
class CreditCardsNotifier extends StateNotifier<CreditCardsState> {
  CreditCardsNotifier(CreditCardsState state) : super(state) {}
}

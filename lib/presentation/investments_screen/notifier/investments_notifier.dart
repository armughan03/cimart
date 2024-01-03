import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/moneybagofdollars_item_model.dart';
import '../models/applestore_item_model.dart';
import 'package:test/presentation/investments_screen/models/investments_model.dart';
part 'investments_state.dart';

final investmentsNotifier =
    StateNotifierProvider<InvestmentsNotifier, InvestmentsState>(
  (ref) => InvestmentsNotifier(InvestmentsState(
    searchController: TextEditingController(),
    investmentsModelObj: InvestmentsModel(moneybagofdollarsItemList: [
      MoneybagofdollarsItemModel(
          moneyBagOfDollars: ImageConstant.imgMoneyBagOfDollars,
          totalInvestedAmount: "Total Invested Amount",
          price: "150,000"),
      MoneybagofdollarsItemModel(
          moneyBagOfDollars: ImageConstant.imgPieChart1,
          totalInvestedAmount: "Number of Investments",
          price: "1,250"),
      MoneybagofdollarsItemModel(
          moneyBagOfDollars: ImageConstant.imgRepeat1,
          totalInvestedAmount: "Rate of Return",
          price: "+5.80%")
    ], applestoreItemList: [
      ApplestoreItemModel(
          image: ImageConstant.imgClose,
          appleStore: "Apple Store",
          ecommerceMarketplace: "E-commerce, Marketplace",
          sixteen: "+16%"),
      ApplestoreItemModel(
          image: ImageConstant.imgFloatingIcon,
          appleStore: "Tesla Motors",
          ecommerceMarketplace: "Electric Vehicles",
          sixteen: "+25%"),
      ApplestoreItemModel(
          appleStore: "Samsung Mobile",
          ecommerceMarketplace: "E-commerce, Marketplace",
          sixteen: "-4%")
    ]),
  )),
);

/// A notifier that manages the state of a Investments according to the event that is dispatched to it.
class InvestmentsNotifier extends StateNotifier<InvestmentsState> {
  InvestmentsNotifier(InvestmentsState state) : super(state) {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/loans_item_model.dart';
import 'package:test/presentation/loans_screen/models/loans_model.dart';
part 'loans_state.dart';

final loansNotifier = StateNotifierProvider<LoansNotifier, LoansState>(
  (ref) => LoansNotifier(LoansState(
    searchController: TextEditingController(),
    loansModelObj: LoansModel(loansItemList: [
      LoansItemModel(
          userThirtyTwo: ImageConstant.imgUser32,
          personalLoans: "Personal Loans",
          price: "50,000"),
      LoansItemModel(
          userThirtyTwo: ImageConstant.imgBriefcase1,
          personalLoans: "Corporate Loans",
          price: "100,000"),
      LoansItemModel(
          userThirtyTwo: ImageConstant.imgGraph1,
          personalLoans: "Business Loans",
          price: "500,000"),
      LoansItemModel(
          userThirtyTwo: ImageConstant.imgSupport1,
          personalLoans: "Custom Loans",
          price: "Choose Money")
    ]),
  )),
);

/// A notifier that manages the state of a Loans according to the event that is dispatched to it.
class LoansNotifier extends StateNotifier<LoansState> {
  LoansNotifier(LoansState state) : super(state) {}
}

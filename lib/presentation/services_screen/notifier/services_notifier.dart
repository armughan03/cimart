import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/lifeinsurancefilled_item_model.dart';
import '../models/loanone_item_model.dart';
import 'package:test/presentation/services_screen/models/services_model.dart';
part 'services_state.dart';

final servicesNotifier = StateNotifierProvider<ServicesNotifier, ServicesState>(
  (ref) => ServicesNotifier(ServicesState(
    searchController: TextEditingController(),
    servicesModelObj: ServicesModel(lifeinsurancefilledItemList: [
      LifeinsurancefilledItemModel(
          lifeInsuranceFilled: ImageConstant.imgLifeInsuranceFilled,
          lifeInsurance: "Life Insurance",
          unlimitedProtection: "Unlimited protection"),
      LifeinsurancefilledItemModel(
          lifeInsuranceFilled: ImageConstant.imgBag1,
          lifeInsurance: "Shopping",
          unlimitedProtection: "Buy. Think. Grow"),
      LifeinsurancefilledItemModel(
          lifeInsuranceFilled: ImageConstant.imgShield1,
          lifeInsurance: "Safety",
          unlimitedProtection: "We are your allies")
    ], loanoneItemList: [
      LoanoneItemModel(
          loanOne: ImageConstant.imgLoan1,
          businessLoans: "Business loans",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgBriefcase1,
          businessLoans: "Checking accounts",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgGroup,
          businessLoans: "Savings accounts",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgUser32,
          businessLoans: "Debit and credit cards",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgShield1,
          businessLoans: "Life Insurance",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgLoan1,
          businessLoans: "Business loans",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details")
    ]),
  )),
);

/// A notifier that manages the state of a Services according to the event that is dispatched to it.
class ServicesNotifier extends StateNotifier<ServicesState> {
  ServicesNotifier(ServicesState state) : super(state) {}
}

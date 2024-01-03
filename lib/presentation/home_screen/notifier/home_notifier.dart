import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/balance_item_model.dart';
import '../models/liviabator_item_model.dart';
import 'package:test/presentation/home_screen/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(HomeState(
        searchController: TextEditingController(),
        homeModelObj: HomeModel(balanceItemList: [
          BalanceItemModel(
              balance: "Balance",
              price: "5,756",
              cardholder: "CARD HOLDER",
              eddyCusuma: "Eddy Cusuma",
              validthru: "VALID THRU",
              oneThousandTwoHundredTwentyTwo: "12/22",
              thirtySevenMillionSevenHundred: "3778 **** **** 1234")
        ], liviabatorItemList: [
          LiviabatorItemModel(
              liviaBator: ImageConstant.imgEllipse18,
              liviaBator1: "Livia Bator",
              ceo: "CEO"),
          LiviabatorItemModel(
              liviaBator: ImageConstant.imgEllipse1850x50,
              liviaBator1: "Randy Press",
              ceo: "Director"),
          LiviabatorItemModel(
              liviaBator: ImageConstant.imgEllipse181,
              liviaBator1: "Workman",
              ceo: "Designer")
        ]))));

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}

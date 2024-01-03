// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'balance_item_model.dart';
import 'liviabator_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.balanceItemList = const [],
    this.liviabatorItemList = const [],
  }) {}

  List<BalanceItemModel> balanceItemList;

  List<LiviabatorItemModel> liviabatorItemList;

  HomeModel copyWith({
    List<BalanceItemModel>? balanceItemList,
    List<LiviabatorItemModel>? liviabatorItemList,
  }) {
    return HomeModel(
      balanceItemList: balanceItemList ?? this.balanceItemList,
      liviabatorItemList: liviabatorItemList ?? this.liviabatorItemList,
    );
  }

  @override
  List<Object?> get props => [balanceItemList, liviabatorItemList];
}

// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'moneybagofdollars_item_model.dart';
import 'applestore_item_model.dart';

/// This class defines the variables used in the [investments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InvestmentsModel extends Equatable {
  InvestmentsModel({
    this.moneybagofdollarsItemList = const [],
    this.applestoreItemList = const [],
  }) {}

  List<MoneybagofdollarsItemModel> moneybagofdollarsItemList;

  List<ApplestoreItemModel> applestoreItemList;

  InvestmentsModel copyWith({
    List<MoneybagofdollarsItemModel>? moneybagofdollarsItemList,
    List<ApplestoreItemModel>? applestoreItemList,
  }) {
    return InvestmentsModel(
      moneybagofdollarsItemList:
          moneybagofdollarsItemList ?? this.moneybagofdollarsItemList,
      applestoreItemList: applestoreItemList ?? this.applestoreItemList,
    );
  }

  @override
  List<Object?> get props => [moneybagofdollarsItemList, applestoreItemList];
}

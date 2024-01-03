// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'balance1_item_model.dart';
import 'arrow_item_model.dart';

/// This class defines the variables used in the [transactions_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsModel extends Equatable {
  TransactionsModel({
    this.balance1ItemList = const [],
    this.arrowItemList = const [],
  }) {}

  List<Balance1ItemModel> balance1ItemList;

  List<ArrowItemModel> arrowItemList;

  TransactionsModel copyWith({
    List<Balance1ItemModel>? balance1ItemList,
    List<ArrowItemModel>? arrowItemList,
  }) {
    return TransactionsModel(
      balance1ItemList: balance1ItemList ?? this.balance1ItemList,
      arrowItemList: arrowItemList ?? this.arrowItemList,
    );
  }

  @override
  List<Object?> get props => [balance1ItemList, arrowItemList];
}

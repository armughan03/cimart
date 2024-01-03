// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'balance2_item_model.dart';
import 'creditcards_item_model.dart';

/// This class defines the variables used in the [credit_cards_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreditCardsModel extends Equatable {
  CreditCardsModel({
    this.balance2ItemList = const [],
    this.creditcardsItemList = const [],
  }) {}

  List<Balance2ItemModel> balance2ItemList;

  List<CreditcardsItemModel> creditcardsItemList;

  CreditCardsModel copyWith({
    List<Balance2ItemModel>? balance2ItemList,
    List<CreditcardsItemModel>? creditcardsItemList,
  }) {
    return CreditCardsModel(
      balance2ItemList: balance2ItemList ?? this.balance2ItemList,
      creditcardsItemList: creditcardsItemList ?? this.creditcardsItemList,
    );
  }

  @override
  List<Object?> get props => [balance2ItemList, creditcardsItemList];
}

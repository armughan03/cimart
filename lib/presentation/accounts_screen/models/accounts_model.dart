// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'accountsgrid_item_model.dart';

/// This class defines the variables used in the [accounts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountsModel extends Equatable {
  AccountsModel({this.accountsgridItemList = const []}) {}

  List<AccountsgridItemModel> accountsgridItemList;

  AccountsModel copyWith({List<AccountsgridItemModel>? accountsgridItemList}) {
    return AccountsModel(
      accountsgridItemList: accountsgridItemList ?? this.accountsgridItemList,
    );
  }

  @override
  List<Object?> get props => [accountsgridItemList];
}

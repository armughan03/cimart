// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'loans_item_model.dart';

/// This class defines the variables used in the [loans_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoansModel extends Equatable {
  LoansModel({this.loansItemList = const []}) {}

  List<LoansItemModel> loansItemList;

  LoansModel copyWith({List<LoansItemModel>? loansItemList}) {
    return LoansModel(
      loansItemList: loansItemList ?? this.loansItemList,
    );
  }

  @override
  List<Object?> get props => [loansItemList];
}

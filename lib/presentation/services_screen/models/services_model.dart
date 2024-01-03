// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'lifeinsurancefilled_item_model.dart';
import 'loanone_item_model.dart';

/// This class defines the variables used in the [services_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServicesModel extends Equatable {
  ServicesModel({
    this.lifeinsurancefilledItemList = const [],
    this.loanoneItemList = const [],
  }) {}

  List<LifeinsurancefilledItemModel> lifeinsurancefilledItemList;

  List<LoanoneItemModel> loanoneItemList;

  ServicesModel copyWith({
    List<LifeinsurancefilledItemModel>? lifeinsurancefilledItemList,
    List<LoanoneItemModel>? loanoneItemList,
  }) {
    return ServicesModel(
      lifeinsurancefilledItemList:
          lifeinsurancefilledItemList ?? this.lifeinsurancefilledItemList,
      loanoneItemList: loanoneItemList ?? this.loanoneItemList,
    );
  }

  @override
  List<Object?> get props => [lifeinsurancefilledItemList, loanoneItemList];
}

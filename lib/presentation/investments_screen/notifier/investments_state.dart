// ignore_for_file: must_be_immutable

part of 'investments_notifier.dart';

/// Represents the state of Investments in the application.
class InvestmentsState extends Equatable {
  InvestmentsState({
    this.searchController,
    this.investmentsModelObj,
  });

  TextEditingController? searchController;

  InvestmentsModel? investmentsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        investmentsModelObj,
      ];

  InvestmentsState copyWith({
    TextEditingController? searchController,
    InvestmentsModel? investmentsModelObj,
  }) {
    return InvestmentsState(
      searchController: searchController ?? this.searchController,
      investmentsModelObj: investmentsModelObj ?? this.investmentsModelObj,
    );
  }
}

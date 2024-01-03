// ignore_for_file: must_be_immutable

part of 'loans_notifier.dart';

/// Represents the state of Loans in the application.
class LoansState extends Equatable {
  LoansState({
    this.searchController,
    this.loansModelObj,
  });

  TextEditingController? searchController;

  LoansModel? loansModelObj;

  @override
  List<Object?> get props => [
        searchController,
        loansModelObj,
      ];

  LoansState copyWith({
    TextEditingController? searchController,
    LoansModel? loansModelObj,
  }) {
    return LoansState(
      searchController: searchController ?? this.searchController,
      loansModelObj: loansModelObj ?? this.loansModelObj,
    );
  }
}

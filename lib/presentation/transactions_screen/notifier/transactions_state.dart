// ignore_for_file: must_be_immutable

part of 'transactions_notifier.dart';

/// Represents the state of Transactions in the application.
class TransactionsState extends Equatable {
  TransactionsState({
    this.searchController,
    this.transactionsModelObj,
  });

  TextEditingController? searchController;

  TransactionsModel? transactionsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        transactionsModelObj,
      ];

  TransactionsState copyWith({
    TextEditingController? searchController,
    TransactionsModel? transactionsModelObj,
  }) {
    return TransactionsState(
      searchController: searchController ?? this.searchController,
      transactionsModelObj: transactionsModelObj ?? this.transactionsModelObj,
    );
  }
}

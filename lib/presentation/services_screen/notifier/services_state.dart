// ignore_for_file: must_be_immutable

part of 'services_notifier.dart';

/// Represents the state of Services in the application.
class ServicesState extends Equatable {
  ServicesState({
    this.searchController,
    this.servicesModelObj,
  });

  TextEditingController? searchController;

  ServicesModel? servicesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        servicesModelObj,
      ];

  ServicesState copyWith({
    TextEditingController? searchController,
    ServicesModel? servicesModelObj,
  }) {
    return ServicesState(
      searchController: searchController ?? this.searchController,
      servicesModelObj: servicesModelObj ?? this.servicesModelObj,
    );
  }
}

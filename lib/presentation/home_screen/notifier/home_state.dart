// ignore_for_file: must_be_immutable

part of 'home_notifier.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.searchController,
    this.id,
    this.homeModelObj,
  });

  TextEditingController? searchController;

  HomeModel? homeModelObj;

  var id;

  @override
  List<Object?> get props => [
        searchController,
        id,
        homeModelObj,
      ];

  HomeState copyWith({
    TextEditingController? searchController,
    var id,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      id: id ?? this.id,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}

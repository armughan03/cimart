// ignore_for_file: must_be_immutable

part of 'setting_preference_tab_container_notifier.dart';

/// Represents the state of SettingPreferenceTabContainer in the application.
class SettingPreferenceTabContainerState extends Equatable {
  SettingPreferenceTabContainerState({
    this.searchController,
    this.settingPreferenceTabContainerModelObj,
  });

  TextEditingController? searchController;

  SettingPreferenceTabContainerModel? settingPreferenceTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        settingPreferenceTabContainerModelObj,
      ];

  SettingPreferenceTabContainerState copyWith({
    TextEditingController? searchController,
    SettingPreferenceTabContainerModel? settingPreferenceTabContainerModelObj,
  }) {
    return SettingPreferenceTabContainerState(
      searchController: searchController ?? this.searchController,
      settingPreferenceTabContainerModelObj:
          settingPreferenceTabContainerModelObj ??
              this.settingPreferenceTabContainerModelObj,
    );
  }
}

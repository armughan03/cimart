// ignore_for_file: must_be_immutable

part of 'setting_preference_notifier.dart';

/// Represents the state of SettingPreference in the application.
class SettingPreferenceState extends Equatable {
  SettingPreferenceState({
    this.classicController,
    this.timeController,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.settingPreferenceModelObj,
  });

  TextEditingController? classicController;

  TextEditingController? timeController;

  SettingPreferenceModel? settingPreferenceModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        classicController,
        timeController,
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        settingPreferenceModelObj,
      ];

  SettingPreferenceState copyWith({
    TextEditingController? classicController,
    TextEditingController? timeController,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    SettingPreferenceModel? settingPreferenceModelObj,
  }) {
    return SettingPreferenceState(
      classicController: classicController ?? this.classicController,
      timeController: timeController ?? this.timeController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      settingPreferenceModelObj:
          settingPreferenceModelObj ?? this.settingPreferenceModelObj,
    );
  }
}

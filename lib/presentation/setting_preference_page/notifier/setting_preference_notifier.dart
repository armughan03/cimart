import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test/presentation/setting_preference_page/models/setting_preference_model.dart';
part 'setting_preference_state.dart';

final settingPreferenceNotifier =
    StateNotifierProvider<SettingPreferenceNotifier, SettingPreferenceState>(
  (ref) => SettingPreferenceNotifier(SettingPreferenceState(
    classicController: TextEditingController(),
    timeController: TextEditingController(),
    isSelectedSwitch: false,
    isSelectedSwitch1: false,
    isSelectedSwitch2: false,
    settingPreferenceModelObj: SettingPreferenceModel(),
  )),
);

/// A notifier that manages the state of a SettingPreference according to the event that is dispatched to it.
class SettingPreferenceNotifier extends StateNotifier<SettingPreferenceState> {
  SettingPreferenceNotifier(SettingPreferenceState state) : super(state) {}

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }

  void changeSwitchBox2(bool value) {
    state = state.copyWith(isSelectedSwitch1: value);
  }

  void changeSwitchBox3(bool value) {
    state = state.copyWith(isSelectedSwitch2: value);
  }
}

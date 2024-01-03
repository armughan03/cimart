import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test/presentation/setting_preference_tab_container_screen/models/setting_preference_tab_container_model.dart';
part 'setting_preference_tab_container_state.dart';

final settingPreferenceTabContainerNotifier = StateNotifierProvider<
    SettingPreferenceTabContainerNotifier, SettingPreferenceTabContainerState>(
  (ref) =>
      SettingPreferenceTabContainerNotifier(SettingPreferenceTabContainerState(
    searchController: TextEditingController(),
    settingPreferenceTabContainerModelObj: SettingPreferenceTabContainerModel(),
  )),
);

/// A notifier that manages the state of a SettingPreferenceTabContainer according to the event that is dispatched to it.
class SettingPreferenceTabContainerNotifier
    extends StateNotifier<SettingPreferenceTabContainerState> {
  SettingPreferenceTabContainerNotifier(
      SettingPreferenceTabContainerState state)
      : super(state) {}
}

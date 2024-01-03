import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test/presentation/setting_security_page/models/setting_security_model.dart';
part 'setting_security_state.dart';

final settingSecurityNotifier =
    StateNotifierProvider<SettingSecurityNotifier, SettingSecurityState>(
  (ref) => SettingSecurityNotifier(SettingSecurityState(
    passwordController: TextEditingController(),
    newpasswordController: TextEditingController(),
    isSelectedSwitch: false,
    settingSecurityModelObj: SettingSecurityModel(),
  )),
);

/// A notifier that manages the state of a SettingSecurity according to the event that is dispatched to it.
class SettingSecurityNotifier extends StateNotifier<SettingSecurityState> {
  SettingSecurityNotifier(SettingSecurityState state) : super(state) {}

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }
}

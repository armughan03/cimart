import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test/presentation/setting_edit_profile_page/models/setting_edit_profile_model.dart';
part 'setting_edit_profile_state.dart';

final settingEditProfileNotifier =
    StateNotifierProvider<SettingEditProfileNotifier, SettingEditProfileState>(
  (ref) => SettingEditProfileNotifier(SettingEditProfileState(
    nameController: TextEditingController(),
    userNameController: TextEditingController(),
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
    addressController: TextEditingController(),
    addressController1: TextEditingController(),
    cityController: TextEditingController(),
    countryController: TextEditingController(),
    settingEditProfileModelObj: SettingEditProfileModel(),
  )),
);

/// A notifier that manages the state of a SettingEditProfile according to the event that is dispatched to it.
class SettingEditProfileNotifier
    extends StateNotifier<SettingEditProfileState> {
  SettingEditProfileNotifier(SettingEditProfileState state) : super(state) {}
}

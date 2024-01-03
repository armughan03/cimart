// ignore_for_file: must_be_immutable

part of 'setting_security_notifier.dart';

/// Represents the state of SettingSecurity in the application.
class SettingSecurityState extends Equatable {
  SettingSecurityState({
    this.passwordController,
    this.newpasswordController,
    this.isSelectedSwitch = false,
    this.settingSecurityModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? newpasswordController;

  SettingSecurityModel? settingSecurityModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        passwordController,
        newpasswordController,
        isSelectedSwitch,
        settingSecurityModelObj,
      ];

  SettingSecurityState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newpasswordController,
    bool? isSelectedSwitch,
    SettingSecurityModel? settingSecurityModelObj,
  }) {
    return SettingSecurityState(
      passwordController: passwordController ?? this.passwordController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      settingSecurityModelObj:
          settingSecurityModelObj ?? this.settingSecurityModelObj,
    );
  }
}

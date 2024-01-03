// ignore_for_file: must_be_immutable

part of 'setting_edit_profile_notifier.dart';

/// Represents the state of SettingEditProfile in the application.
class SettingEditProfileState extends Equatable {
  SettingEditProfileState({
    this.nameController,
    this.userNameController,
    this.emailController,
    this.passwordController,
    this.addressController,
    this.addressController1,
    this.cityController,
    this.countryController,
    this.settingEditProfileModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? userNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? addressController;

  TextEditingController? addressController1;

  TextEditingController? cityController;

  TextEditingController? countryController;

  SettingEditProfileModel? settingEditProfileModelObj;

  @override
  List<Object?> get props => [
        nameController,
        userNameController,
        emailController,
        passwordController,
        addressController,
        addressController1,
        cityController,
        countryController,
        settingEditProfileModelObj,
      ];

  SettingEditProfileState copyWith({
    TextEditingController? nameController,
    TextEditingController? userNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? addressController,
    TextEditingController? addressController1,
    TextEditingController? cityController,
    TextEditingController? countryController,
    SettingEditProfileModel? settingEditProfileModelObj,
  }) {
    return SettingEditProfileState(
      nameController: nameController ?? this.nameController,
      userNameController: userNameController ?? this.userNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      addressController: addressController ?? this.addressController,
      addressController1: addressController1 ?? this.addressController1,
      cityController: cityController ?? this.cityController,
      countryController: countryController ?? this.countryController,
      settingEditProfileModelObj:
          settingEditProfileModelObj ?? this.settingEditProfileModelObj,
    );
  }
}

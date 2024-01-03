// ignore_for_file: must_be_immutable

part of 'registers_notifier.dart';

/// Represents the state of Registers in the application.
class RegistersState extends Equatable {
  RegistersState({
    this.firstNameRowController,
    this.lastNameRowController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.registersModelObj,
  });

  TextEditingController? firstNameRowController;

  TextEditingController? lastNameRowController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  RegistersModel? registersModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        firstNameRowController,
        lastNameRowController,
        emailController,
        passwordController,
        isShowPassword,
        registersModelObj,
      ];

  RegistersState copyWith({
    TextEditingController? firstNameRowController,
    TextEditingController? lastNameRowController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    RegistersModel? registersModelObj,
  }) {
    return RegistersState(
      firstNameRowController:
          firstNameRowController ?? this.firstNameRowController,
      lastNameRowController:
          lastNameRowController ?? this.lastNameRowController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      registersModelObj: registersModelObj ?? this.registersModelObj,
    );
  }
}

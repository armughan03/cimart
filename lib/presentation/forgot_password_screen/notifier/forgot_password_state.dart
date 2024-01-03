// ignore_for_file: must_be_immutable

part of 'forgot_password_notifier.dart';

/// Represents the state of ForgotPassword in the application.
class ForgotPasswordState extends Equatable {
  ForgotPasswordState({
    this.newpasswordController,
    this.forgotPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  ForgotPasswordModel? forgotPasswordModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        forgotPasswordModelObj,
      ];

  ForgotPasswordState copyWith({
    TextEditingController? newpasswordController,
    ForgotPasswordModel? forgotPasswordModelObj,
  }) {
    return ForgotPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      forgotPasswordModelObj:
          forgotPasswordModelObj ?? this.forgotPasswordModelObj,
    );
  }
}

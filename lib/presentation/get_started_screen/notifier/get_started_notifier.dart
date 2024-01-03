import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test/presentation/get_started_screen/models/get_started_model.dart';
part 'get_started_state.dart';

final getStartedNotifier =
    StateNotifierProvider<GetStartedNotifier, GetStartedState>((ref) =>
        GetStartedNotifier(
            GetStartedState(getStartedModelObj: GetStartedModel())));

/// A notifier that manages the state of a GetStarted according to the event that is dispatched to it.
class GetStartedNotifier extends StateNotifier<GetStartedState> {
  GetStartedNotifier(GetStartedState state) : super(state);
}

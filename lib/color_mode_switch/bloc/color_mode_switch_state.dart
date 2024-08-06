// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'color_mode_switch_bloc.dart';

enum SnackBarEnum {
  initial,
  success,
  error,
  warning;

  bool get isInitial => this == SnackBarEnum.initial;
  bool get isWarning => this == SnackBarEnum.warning;
  bool get isError => this == SnackBarEnum.error;
  bool get isSuccess => this == SnackBarEnum.success;
}

/// {@template color_mode_switch_state}
/// ColorModeSwitchState description
/// {@endtemplate}
class ColorModeSwitchState extends Equatable {
  /// {@macro color_mode_switch_state}
  const ColorModeSwitchState({
    this.toggle = true,
    this.snackbarStatus = SnackBarEnum.initial,
  });

  /// A description for toggle
  final bool toggle;
  final SnackBarEnum snackbarStatus;

  /// Creates a copy of the current ColorModeSwitchState with property changes
  ColorModeSwitchState copyWith({
    bool? toggle,
    SnackBarEnum? snackbarStatus,
  }) {
    return ColorModeSwitchState(
      toggle: toggle ?? this.toggle,
      snackbarStatus: snackbarStatus ?? this.snackbarStatus,
    );
  }

  @override
  List<Object?> get props => [toggle, snackbarStatus];
}

/// {@template color_mode_switch_initial}
/// The initial state of ColorModeSwitchState
/// {@endtemplate}
class ColorModeSwitchInitial extends ColorModeSwitchState {
  /// {@macro color_mode_switch_initial}
  const ColorModeSwitchInitial() : super();
}

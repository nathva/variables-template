part of 'color_mode_switch_bloc.dart';

abstract class ColorModeSwitchEvent extends Equatable {
  const ColorModeSwitchEvent();
}

/// {@template custom_color_mode_switch_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class ChangeToggleColorModeSwitchEvent extends ColorModeSwitchEvent {
  /// {@macro custom_color_mode_switch_event}
  const ChangeToggleColorModeSwitchEvent();

  @override
  List<Object?> get props => [];
}

class GenerateSnackbarColorModeSwitchEvent extends ColorModeSwitchEvent {
  const GenerateSnackbarColorModeSwitchEvent(this.snackBarEnum);

  final SnackBarEnum snackBarEnum;

  @override
  List<Object?> get props => [snackBarEnum];
}

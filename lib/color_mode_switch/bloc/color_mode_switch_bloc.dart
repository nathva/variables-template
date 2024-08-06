import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'color_mode_switch_event.dart';
part 'color_mode_switch_state.dart';

class ColorModeSwitchBloc
    extends Bloc<ColorModeSwitchEvent, ColorModeSwitchState> {
  ColorModeSwitchBloc() : super(const ColorModeSwitchInitial()) {
    on<ChangeToggleColorModeSwitchEvent>(_onTogglePressed);
    on<GenerateSnackbarColorModeSwitchEvent>(_onGenerateSnackbar);
  }

  FutureOr<void> _onTogglePressed(
    ChangeToggleColorModeSwitchEvent event,
    Emitter<ColorModeSwitchState> emit,
  ) {
    emit(state.copyWith(toggle: !state.toggle));
  }

  FutureOr<void> _onGenerateSnackbar(
    GenerateSnackbarColorModeSwitchEvent event,
    Emitter<ColorModeSwitchState> emit,
  ) {
    emit(state.copyWith(snackbarStatus: event.snackBarEnum));
  }
}

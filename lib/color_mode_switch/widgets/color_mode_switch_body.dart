import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:variables_test/color_mode_switch/bloc/bloc.dart';
import 'package:variables_test/core/theme/theme_provider.dart';
import 'package:variables_test/core/values/color_values.dart';
import 'package:variables_test/core/values/width_values.dart';

/// {@template color_mode_switch_body}
/// Body of the ColorModeSwitchPage.
///
/// Add what it does
/// {@endtemplate}
class ColorModeSwitchBody extends StatelessWidget {
  /// {@macro color_mode_switch_body}
  const ColorModeSwitchBody({super.key});

  @override
  Widget build(BuildContext context) {
    var isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;

    final theme = Provider.of<ThemeProvider>(context);
    return BlocListener<ColorModeSwitchBloc, ColorModeSwitchState>(
      listenWhen: (previous, current) =>
          previous.snackbarStatus != current.snackbarStatus,
      listener: (context, state) {
        if (state.snackbarStatus.isSuccess) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(
                backgroundColor: ColorValues.bgQuaternary(context),
                content: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: ColorValues.utilitySuccess500(context),
                    ),
                    SizedBox(
                      width: WidthValues.spacingSm,
                    ),
                    Text(
                      'Snackbar de éxito',
                      style: TextStyle(
                        color: ColorValues.textSuccessPrimary(context),
                      ),
                    ),
                  ],
                ),
              ),
            );
        }
        if (state.snackbarStatus.isError) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(
                backgroundColor: ColorValues.bgQuaternary(context),
                content: Row(
                  children: [
                    Icon(
                      Icons.error,
                      color: ColorValues.utilityError500(context),
                    ),
                    SizedBox(
                      width: WidthValues.spacingSm,
                    ),
                    Text(
                      'Snackbar de error',
                      style: TextStyle(
                        color: ColorValues.textErrorPrimary(context),
                      ),
                    ),
                  ],
                ),
              ),
            );
        }
        if (state.snackbarStatus.isWarning) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(
                backgroundColor: ColorValues.bgQuaternary(context),
                content: Row(
                  children: [
                    Icon(
                      Icons.warning,
                      color: ColorValues.utilityWarning500(context),
                    ),
                    SizedBox(
                      width: WidthValues.spacingSm,
                    ),
                    Text(
                      'Snackbar de advertencia',
                      style: TextStyle(
                        color: ColorValues.textWarningPrimary(context),
                      ),
                    ),
                  ],
                ),
              ),
            );
        }
      },
      child: BlocBuilder<ColorModeSwitchBloc, ColorModeSwitchState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(WidthValues.margin),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: WidthValues.spacingXl,
                  ),
                  Text(
                    'Título de prueba',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Texto de prueba',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: WidthValues.spacingLg,
                  ),
                  if (theme.themeMode == ThemeMode.light || !isPlatformDark)
                    const Icon(
                      Icons.wb_sunny,
                      size: 100,
                    )
                  else
                    const Icon(
                      Icons.nightlight_round,
                      size: 100,
                    ),
                  SizedBox(
                    height: WidthValues.spacingLg,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final bool value;
                      if (theme.themeMode == ThemeMode.dark || isPlatformDark) {
                        value = true;
                        isPlatformDark = false;
                      } else {
                        value = false;
                      }
                      theme.toggleTheme(isDarkMode: value);
                      context.read<ColorModeSwitchBloc>().add(
                            const ChangeToggleColorModeSwitchEvent(),
                          );
                    },
                    child: const Center(child: Text('Cambiar color')),
                  ),
                  SizedBox(
                    height: WidthValues.spacingMd,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      final snackBarEnum = SnackBarEnum.values[
                          state.snackbarStatus.index + 1 >=
                                  SnackBarEnum.values.length
                              ? 1
                              : state.snackbarStatus.index + 1];

                      context.read<ColorModeSwitchBloc>().add(
                            GenerateSnackbarColorModeSwitchEvent(
                              snackBarEnum,
                            ),
                          );
                    },
                    child: const Center(child: Text('Generar snackbar')),
                  ),
                ],
              ),
            ),
          ).animate().fadeIn(
                duration: const Duration(milliseconds: 1000),
              );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:variables_test/color_mode_switch/bloc/bloc.dart';
import 'package:variables_test/core/constants/themes/theme_provider.dart';
import 'package:variables_test/core/constants/values/color_values.dart';
import 'package:variables_test/core/constants/width_constants.dart';

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
                    const SizedBox(
                      width: WidthConstants.padding,
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
                    const SizedBox(
                      width: WidthConstants.padding,
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
                    const SizedBox(
                      width: WidthConstants.padding,
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
            padding: const EdgeInsets.all(WidthConstants.margin),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: WidthConstants.bottomPadding,
                  ),
                  Text(
                    'Título de prueba',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Texto de prueba',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: WidthConstants.padding * 2,
                  ),
                  AnimatedSwitcher(
                    switchInCurve: Curves.easeInOut,
                    switchOutCurve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 15000),
                    key: ValueKey(state.toggle),
                    child: theme.themeMode == ThemeMode.light ||
                            theme.themeMode == ThemeMode.system
                        ? const Icon(
                            Icons.wb_sunny,
                            size: 100,
                          )
                        : const Icon(
                            Icons.nightlight_round,
                            size: 100,
                          ),
                  ),
                  const SizedBox(
                    height: WidthConstants.padding * 2,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final value = theme.themeMode == ThemeMode.light;
                      theme.toggleTheme(value);
                      context.read<ColorModeSwitchBloc>().add(
                            const ChangeToggleColorModeSwitchEvent(),
                          );
                    },
                    child: const Center(child: Text('Cambiar color')),
                  ),
                  const SizedBox(
                    height: WidthConstants.padding,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      final snackBarEnum = SnackBarEnum.values[
                          state.snackbarStatus.index + 1 >=
                                  SnackBarEnum.values.length
                              ? 0
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
          );
        },
      ),
    );
  }
}

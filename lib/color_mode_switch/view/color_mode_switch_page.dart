import 'package:flutter/material.dart';
import 'package:variables_test/color_mode_switch/bloc/bloc.dart';
import 'package:variables_test/color_mode_switch/widgets/color_mode_switch_body.dart';

/// {@template color_mode_switch_page}
/// A description for ColorModeSwitchPage
/// {@endtemplate}
class ColorModeSwitchPage extends StatelessWidget {
  /// {@macro color_mode_switch_page}
  const ColorModeSwitchPage({super.key});

  /// The static route for ColorModeSwitchPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const ColorModeSwitchPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorModeSwitchBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Variable color demo'),
        ),
        body: const ColorModeSwitchView(),
      ),
    );
  }
}

/// {@template color_mode_switch_view}
/// Displays the Body of ColorModeSwitchView
/// {@endtemplate}
class ColorModeSwitchView extends StatelessWidget {
  /// {@macro color_mode_switch_view}
  const ColorModeSwitchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColorModeSwitchBody();
  }
}

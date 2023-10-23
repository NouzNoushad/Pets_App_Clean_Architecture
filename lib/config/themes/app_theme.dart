import 'package:flutter/material.dart';
import '../../core/utils/colors.dart';

ThemeData appTheme() => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: ColorPicker.seedColor),
      useMaterial3: true,
    );

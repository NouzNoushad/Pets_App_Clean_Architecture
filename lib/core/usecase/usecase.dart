import 'package:flutter/material.dart';
import 'package:pet_app/core/utils/strings.dart';

abstract class UseCase<T, P> {
  Future<T> call(P param);
}

void get emptyParams => debugPrint(AppString.emptyParams);

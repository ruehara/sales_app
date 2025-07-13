import 'package:app/core/bootstrap.dart';
import 'package:flutter/material.dart';
import 'core/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(() => const App());
}

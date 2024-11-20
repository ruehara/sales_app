import 'package:flutter/foundation.dart';
import 'package:sales_app/core/app_init/app.dart';
import 'package:sales_app/core/app_init/bootstrap.dart';

void main() {
  const apiKey = String.fromEnvironment('API_KEY');
  if (kDebugMode) {
    print('API_KEY: $apiKey');
  }
  bootstrap(() => const App());
}

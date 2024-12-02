import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

/// Stores the locale variable in shared preferences
const localeVar = 'locale';

/// Stores the theme variable in shared preferences
const themeVar = 'theme';

const emailVar = 'email';

/// Stores the database name
const databaseName = 'database.db';

/// Stores the logbase name
const logbase = 'logbase.db';

/// Stores the database folder
const databaseDir = 'database';

/// Stores the log folder
const logDir = 'log';

/// Stores the Files
const filesDir = 'files';

/// Stores the Images
const imagesDir = 'images';

/// Stores the debug windows path
const debugWindowsPath = 'build\\windows\\x64\\runner\\Debug';

/// Returns the app path
Future<String> get appPath async {
  if (Platform.isWindows) {
    if (kDebugMode) {
      return p.join(Directory.current.path, debugWindowsPath);
    } else {
      return Directory.current.path;
    }
  }
  var directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:flutter/foundation.dart';

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

const debugWindowsPath = 'build\\windows\\x64\\runner\\Debug';

String appPath = kDebugMode && Platform.isWindows
    ? path.join(Directory.current.path, debugWindowsPath)
    : Directory.current.path;

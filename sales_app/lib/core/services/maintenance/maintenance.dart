import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:path/path.dart' as p;
import '../../../database/database.dart';
import '../../../shared/utils/constants.dart';

class Maintenance {
  static run() async {
    if (kDebugMode) {
      print('Maintenance is running');
    }

    await createFolders();
    await deleteOldFiles();
    await deleteOldLogs();
    await deleteOldImages();
    await databaseMaintenance();

    if (kDebugMode) {
      print('Maintenance is done');
    }
  }

  static createFolders() async {
    var appDirectory = await appPath;
    await Directory(p.join(appDirectory, filesDir)).create(recursive: true);
    await Directory(p.join(appDirectory, imagesDir)).create(recursive: true);
    await Directory(p.join(appDirectory, logDir)).create(recursive: true);
    await Directory(p.join(appDirectory, databaseDir)).create(recursive: true);
  }

  static deleteOldFiles() async {
    // Add your code to delete old files
  }

  static deleteOldLogs() async {
    final Database db = GetIt.instance<Database>();
    await db.select(db.tafcolors).get();
  }

  static deleteOldImages() async {
    // Add your code to delete old images
  }

  static databaseMaintenance() async {
    // Add your code to maintain the database
  }
}

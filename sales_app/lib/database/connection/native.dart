import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import '../../shared/utils/constants.dart';
import '../helpers/database_logger.dart';

Future<File> get databaseFile async {
  var path = await appPath;
  final dbPath = p.join(path, databaseDir, databaseName);
  return File(dbPath);
}

DatabaseConnection connect() {
  return DatabaseConnection.delayed(
    Future(() async {
      return NativeDatabase.createBackgroundConnection(await databaseFile)
          .interceptWith(DatabaseLogger());
    }),
  );
}

Future<void> validateDatabaseSchema(GeneratedDatabase database) async {
  database.schemaVersion;
}

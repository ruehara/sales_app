import 'package:drift/drift.dart';

import 'accessor.dart';
import 'connection/connection.dart';
import 'database.drift.dart';
import 'include_tables.dart';
import 'tables/tafcores.drift.dart';

@DriftDatabase(
  include: tables,
  daos: [MyAccessor],
)
class Database extends $Database {
  Database(super.e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: ((m, from, to) async {
        await customStatement('PRAGMA foreign_keys = OFF');
        for (var step = from + 1; step <= to; step++) {
          switch (step) {
            // case 2:
            //   // column was added in version 2.
            //   await m.addColumn(teste, teste.teste2);
            //   break;
          }
        }
      }),
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');

        if (details.wasCreated) {
          await batch((b) {
            b.insert(
              tafcolors,
              TafcolorsCompanion.insert(
                id: 'buttonColor',
                alpha: 255,
                red: 255,
                green: 3,
                blue: 67,
              ),
            );
            // b.insert(
            //   tafteste,
            //   TaftesteCompanion.insert(id: const Value(1), name: 'Important'),
            // );

            // b.insert(
            //     taflog,
            //     TaflogCompanion.insert(
            //         cdrglg: const Value('1'),
            //         dthrlg: Value(
            //             DateTime.now().subtract(const Duration(days: 31)))));

            // b.insert(
            //     taflog,
            //     TaflogCompanion.insert(
            //         cdrglg: const Value('2'),
            //         dthrlg: Value(
            //             DateTime.now().subtract(const Duration(days: 15)))));
          });
        }

        if (details.wasCreated || details.hadUpgrade) {
          await validateDatabaseSchema(this);
        }
      },
    );
  }
}

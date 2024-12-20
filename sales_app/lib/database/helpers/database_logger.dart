import 'dart:async';
import 'dart:developer';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

class DatabaseLogger extends QueryInterceptor {
  Future<T> _run<T>(
      String description, FutureOr<T> Function() operation) async {
    final stopwatch = Stopwatch()..start();
    if (kDebugMode) {
      log('Running $description');
    }

    try {
      final result = await operation();
      if (kDebugMode) {
        log(' => succeeded after ${stopwatch.elapsedMilliseconds}ms');
      }
      return result;
    } on Object catch (e) {
      if (kDebugMode) {
        log(' => failed after ${stopwatch.elapsedMilliseconds}ms ($e)');
      }
      rethrow;
    } finally {
      stopwatch.stop();
    }
  }

  @override
  TransactionExecutor beginTransaction(QueryExecutor parent) {
    if (kDebugMode) {
      log('begin transaction');
    }
    return super.beginTransaction(parent);
  }

  @override
  Future<void> commitTransaction(TransactionExecutor inner) {
    return _run('commit transaction', () => inner.send());
  }

  @override
  Future<void> rollbackTransaction(TransactionExecutor inner) {
    return _run('rollback transaction', () => inner.rollback());
  }

  @override
  Future<void> runBatched(
      QueryExecutor executor, BatchedStatements statements) {
    return _run(
        'batch with $statements', () => executor.runBatched(statements));
  }

  @override
  Future<int> runInsert(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runInsert(statement, args));
  }

  @override
  Future<int> runUpdate(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runUpdate(statement, args));
  }

  @override
  Future<int> runDelete(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runDelete(statement, args));
  }

  @override
  Future<void> runCustom(
      QueryExecutor executor, String statement, List<Object?> args) {
    if (kDebugMode) {
      log('begin runCustom');
    }
    return _run(
        '$statement with $args', () => executor.runCustom(statement, args));
  }

  @override
  Future<List<Map<String, Object?>>> runSelect(
      QueryExecutor executor, String statement, List<Object?> args) {
    return _run(
        '$statement with $args', () => executor.runSelect(statement, args));
  }
}

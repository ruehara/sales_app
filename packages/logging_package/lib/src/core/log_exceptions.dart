class LogException implements Exception {
  const LogException(this.message);
  final String message;

  @override
  String toString() => 'LogException: $message';
}

class LogWriteException extends LogException {
  const LogWriteException(super.message);

  @override
  String toString() => 'LogWriteException: $message';
}

class LogReadException extends LogException {
  const LogReadException(super.message);

  @override
  String toString() => 'LogReadException: $message';
}

class LogClearException extends LogException {
  const LogClearException(super.message);

  @override
  String toString() => 'LogClearException: $message';
}

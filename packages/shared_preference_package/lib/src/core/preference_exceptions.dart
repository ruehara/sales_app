sealed class PreferenceException implements Exception {
  const PreferenceException(this.message);
  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

class CacheException extends PreferenceException {
  const CacheException(super.message);
}

class ValidationException extends PreferenceException {
  const ValidationException(super.message);
}

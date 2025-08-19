{{^use_freezed}}
sealed class Failure {
  final String? message;
  final String? error;
  final String? errorDescription;

  const Failure({this.message, this.error, this.errorDescription});
}

class ServerFailure extends Failure {
  const ServerFailure({String? message, String? error, String? errorDescription})
      : super(message: message, error: error, errorDescription: errorDescription);
}

class ValidationFailure extends Failure {
  final Map<String, List<String>> errors;
  const ValidationFailure(this.errors, {String? message})
      : super(message: message);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({String? message, String? error, String? errorDescription})
      : super(message: message, error: error, errorDescription: errorDescription);
}

class TokenExpiredFailure extends Failure {
  const TokenExpiredFailure({String? message, String? error, String? errorDescription})
      : super(message: message, error: error, errorDescription: errorDescription);
}

class ConnectionFailure extends Failure {
  const ConnectionFailure({String? message})
      : super(message: message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure({String? message})
      : super(message: message);
}

class UnknownFailure extends Failure {
  const UnknownFailure({String? message})
      : super(message: message);
}
{{/use_freezed}}
{{#use_freezed}}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.server({
    String? message,
    String? error,
    String? errorDescription,
  }) = ServerFailure;

  const factory Failure.validation(
    Map<String, List<String>> errors, {
    String? message,
  }) = ValidationFailure;

  const factory Failure.unauthorized({
    String? message,
    String? error,
    String? errorDescription,
  }) = UnauthorizedFailure;

  const factory Failure.tokenExpired({
    String? message,
    String? error,
    String? errorDescription,
  }) = TokenExpiredFailure;

  const factory Failure.connection({
    String? message,
  }) = ConnectionFailure;

  const factory Failure.database({
    String? message,
  }) = DatabaseFailure;

  const factory Failure.unknown({
    String? message,
  }) = UnknownFailure;
}
{{/use_freezed}}

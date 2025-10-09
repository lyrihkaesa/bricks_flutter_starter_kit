part of '{{name.snakeCase()}}_bloc.dart';

@freezed
sealed class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({
    String? message,
  }) = _{{name.pascalCase()}}State;

  factory {{name.pascalCase()}}State.initial() => const {{name.pascalCase()}}State(
        message: null,
  );
}


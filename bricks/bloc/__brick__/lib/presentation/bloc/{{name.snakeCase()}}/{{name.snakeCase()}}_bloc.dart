import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_bloc.freezed.dart';
part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State.initial()) {
    on<_Started>(_onStarted);
  }

   Future<void> _onStarted(_Started event, Emitter<{{name.pascalCase()}}State> emit) async {}
}



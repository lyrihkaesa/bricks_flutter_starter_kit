import 'package:fpdart/fpdart.dart';

import '../../core/errors/failure.dart';
import '../entities/{{name.snakeCase()}}.dart';

abstract class {{name.pascalCase()}}Repository {
  /// Example method returning entity
  Future<Either<Failure, {{name.pascalCase()}}>> create(String name);

  /// Example method returning Unit (just success/failure)
  Future<Either<Failure, Unit>> delete(String id);
}

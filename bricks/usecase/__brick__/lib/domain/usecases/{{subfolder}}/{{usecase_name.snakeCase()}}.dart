import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/failure.dart';
import '../../entities/{{repository_name.snakeCase()}}.dart';
import '../../repositories/{{repository_name.snakeCase()}}_repository.dart';

@lazySingleton
class {{usecase_name.pascalCase()}} {
  final {{repository_name.pascalCase()}}Repository {{repository_name.camelCase()}}Repository;

  {{usecase_name.pascalCase()}}(this.{{repository_name.camelCase()}}Repository);

  Future<Either<Failure, {{repository_name.pascalCase()}}>> call() async {
    return await {{repository_name.camelCase()}}Repository.{{usecase_name.camelCase()}}();
  }
}

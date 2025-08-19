import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/exception.dart';
import '../../core/errors/failure.dart';
import '../../domain/entities/{{name.snakeCase()}}.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../datasources/{{name.snakeCase()}}_local_data_source.dart';
import '../datasources/{{name.snakeCase()}}_remote_data_source.dart';

@LazySingleton(as: {{name.pascalCase()}}Repository)
class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}LocalDataSource {{name.camelCase()}}LocalDataSource;
  final {{name.pascalCase()}}RemoteDataSource {{name.camelCase()}}RemoteDataSource;

  {{name.pascalCase()}}RepositoryImpl({
    required this.{{name.camelCase()}}LocalDataSource,
    required this.{{name.camelCase()}}RemoteDataSource,
  });

  @override
  Future<Either<Failure, {{name.pascalCase()}}>> create(String name) async {
    try {
      // Example: call remote datasource
      final result = await {{name.camelCase()}}RemoteDataSource.create(name);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } catch (_) {
      return Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    try {
      await {{name.camelCase()}}RemoteDataSource.delete(id);
      return const Right(unit);
    } on ServerException {
      return Left(ServerFailure());
    } catch (_) {
      return Left(UnexpectedFailure());
    }
  }
}

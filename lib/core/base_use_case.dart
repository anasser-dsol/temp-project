/// Base class for all use cases
/// [Type] is the return type of the use case
/// [Params] is the type of the parameter
///
/// For example, if the use case is to get a list of movies,
/// then [Type] will be List<Movie> and [Params] will be int (page number)
///
abstract class BaseUseCase<Type, Params> {
  /// Executes the use case
  ///
  /// [params] is the parameter to be passed to the use case
  /// Returns the result of the use case
  ///
  Future<Type> call([Params? params]);
}

//Todo: Discuss this with the team

/// Base class for all use cases
/// [Type] is the return type of the use case
///
/// For example, if the use case is to get a list of movies,
/// then [Type] will be List<Movie>
///
abstract class NoParamBaseUseCase<Type> {
  /// Executes the use case
  ///
  /// Returns the result of the use case
  ///
  Future<Type> call();
}

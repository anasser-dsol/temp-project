import 'package:template/features/home/data/index.dart';

abstract class BaseHomeRepository {
  ///
  ///
  final BaseHomeRemoteDataSource remoteDataSource;

  ///
  ///
  final BaseHomeLocalDataSource localDataSource;

  ///
  ///
  BaseHomeRepository(this.remoteDataSource, this.localDataSource);

  ///
  ///
  Future<List<HomeModel>> getHomeData();
}

import 'package:template/features/home/data/index.dart';

abstract class BaseHomeRemoteDataSource {
  Future<List<HomeModel>> getHomeData();
}

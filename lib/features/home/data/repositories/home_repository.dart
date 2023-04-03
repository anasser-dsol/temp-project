import 'package:template/features/home/data/index.dart';
import 'package:template/features/home/domain/index.dart';

class HomeRepository extends BaseHomeRepository {
  HomeRepository(super.remoteDataSource, super.localDataSource);

  @override
  Future<List<HomeModel>> getHomeData() async {
    final data = await localDataSource.getHomeData();
    return data;
  }
}

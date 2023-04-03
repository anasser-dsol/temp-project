import 'package:template/core/base_database.dart';
import 'package:template/features/home/data/index.dart';
import 'package:template/features/home/data/mock_data/home_local_mock.dart';
import 'package:template/features/home/domain/index.dart';

class HomeLocalDataSource extends BaseHomeLocalDataSource {
  final BaseDatabase database;

  HomeLocalDataSource(this.database);

  @override
  Future<List<HomeModel>> getHomeData() {
    final data = HomeLocalMock.homeList;
    final homeModels = data.map((model) => model).toList();

    const duration = Duration(seconds: 3);

    return Future.delayed(
      duration,
      () => homeModels,
    );
  }
}

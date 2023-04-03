import 'package:template/core/base_api_consumer.dart';
import 'package:template/features/home/data/base_datasource/remote/base_home_remote_data_source.dart';
import 'package:template/features/home/data/mock_data/home_remote_mock.dart';
import 'package:template/features/home/data/model/home_model.dart';

class HomeRemoteDataSource extends BaseHomeRemoteDataSource {
  BaseApiConsumer apiConsumer;

  HomeRemoteDataSource(this.apiConsumer);

  @override
  Future<List<HomeModel>> getHomeData() async {
    {
      final data = HomeRemoteMock.homeList;
      final dataModels = data.map((model) => model).toList();

      const duration = Duration(seconds: 3);

      return Future.delayed(
        duration,
        () => dataModels,
      );
    }
  }
}

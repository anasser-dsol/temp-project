import 'package:template/core/base_use_case.dart';
import 'package:template/features/home/data/model/home_model.dart';
import 'package:template/features/home/data/repositories/home_repository.dart';

class GetHomeListUseCase extends NoParamBaseUseCase<List<HomeModel>> {
  final HomeRepository repository;

  GetHomeListUseCase(this.repository);

  @override
  Future<List<HomeModel>> call() {
    return repository.remoteDataSource.getHomeData();
  }
}

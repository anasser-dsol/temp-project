import 'package:template/features/home/data/index.dart';

abstract class BaseHomeLocalDataSource {
  Future<List<HomeModel>> getHomeData();
}

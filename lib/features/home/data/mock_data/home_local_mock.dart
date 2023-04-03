import 'package:template/features/home/data/model/home_model.dart';

class HomeLocalMock {

  static final homeList = <HomeModel>[
    HomeModel(
      id: 1,
      title: 'Title 1 - Local Item',
      description: 'Description 1',
      imageUrl: 'https://picsum.photos/200/300',
    ), HomeModel(
      id: 2,
      title: 'Title 2 - Local Item',
      description: 'Description 2',
      imageUrl: 'https://picsum.photos/200/300',
    ),
  ];
}
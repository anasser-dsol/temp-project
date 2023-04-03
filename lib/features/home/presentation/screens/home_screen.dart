import 'package:flutter/material.dart';
import 'package:template/features/home/data/mock_data/home_local_mock.dart';
import 'package:template/features/home/data/mock_data/home_remote_mock.dart';
import 'package:template/features/home/presentation/widget/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final mockedList = HomeLocalMock.homeList;
    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: Center(
        child: Container(
          color: Colors.amber.withOpacity(0.3),
          child: ListView.builder(
            itemCount: mockedList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(mockedList[index].imageUrl ?? ''),
                title: Text(mockedList[index].title ?? ''),
                subtitle: Text(mockedList[index].description ?? ''),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news/pages/news_list.dart';
import 'package:news/pages/schedules_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Football News'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.newspaper),
                ),
                Tab(
                  icon: Icon(Icons.schedule),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              NewsList(),
              const SchedulesList(),
            ],
          ),
        ),
      ),
    );
  }
}

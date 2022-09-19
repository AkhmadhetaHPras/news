import 'package:flutter/material.dart';
import 'package:news/data/news.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key, required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Football News'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage(
                      news.img.toString(),
                    ),
                  ),
                  Container(
                    color: const Color.fromRGBO(244, 245, 247, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          news.title.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Text(
                            "${news.team} | ${news.datePost}",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(news.content.toString()),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

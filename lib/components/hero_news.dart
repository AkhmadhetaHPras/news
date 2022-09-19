import 'package:flutter/material.dart';
import 'package:news/data/news.dart';

class HeroNews extends StatelessWidget {
  const HeroNews({super.key, required this.news});

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(2),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    news[index].img.toString(),
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(244, 245, 247, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        news[index].title.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/models/models.dart';

class ContentList extends StatelessWidget {
  const ContentList({
    Key? key,
    required this.title,
    required this.contentList,
    this.isOriginals = false,
  }) : super(key: key);
  final String title;
  final List<Content> contentList;
  final bool isOriginals;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: isOriginals ? 500 : 220,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: contentList.length,
              itemBuilder: (context, index) {
                final Content content = contentList[index];
                return GestureDetector(
                  onTap: () => debugPrint(content.name),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: isOriginals ? 400 : 200,
                    width: isOriginals ? 200 : 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(content.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

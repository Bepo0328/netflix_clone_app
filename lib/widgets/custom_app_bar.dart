import 'package:flutter/material.dart';
import 'package:netflix_clone_app/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 24,
      ),
      color: Colors.orange,
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                    onTap: () => debugPrint('TV Shows'),
                    title: 'TV Shows',
                  ),
                  _AppBarButton(
                    onTap: () => debugPrint('Movies'),
                    title: 'Movies',
                  ),
                  _AppBarButton(
                    onTap: () => debugPrint('My List'),
                    title: 'My List',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  const _AppBarButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

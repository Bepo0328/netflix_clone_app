import 'package:flutter/material.dart';
import 'package:netflix_clone_app/assets.dart';
import 'package:netflix_clone_app/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);
  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 24,
      ),
      color: Colors.black.withOpacity(
        (scrollOffset / 350).clamp(0, 1).toDouble(),
      ),
      child: const Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  onTap: () => debugPrint('Home'),
                  title: 'Home',
                ),
                _AppBarButton(
                  onTap: () => debugPrint('TV Shows'),
                  title: 'TV Shows',
                ),
                _AppBarButton(
                  onTap: () => debugPrint('Movies'),
                  title: 'Movies',
                ),
                _AppBarButton(
                  onTap: () => debugPrint('Latest'),
                  title: 'Latest',
                ),
                _AppBarButton(
                  onTap: () => debugPrint('My List'),
                  title: 'My List',
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => debugPrint('Search'),
                  icon: const Icon(Icons.search),
                  iconSize: 28,
                  color: Colors.white,
                ),
                _AppBarButton(
                  onTap: () => debugPrint('KIDS'),
                  title: 'KIDS',
                ),
                _AppBarButton(
                  onTap: () => debugPrint('DVD'),
                  title: 'DVD',
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => debugPrint('Gift'),
                  icon: const Icon(Icons.card_giftcard),
                  iconSize: 28,
                  color: Colors.white,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => debugPrint('Notifications'),
                  icon: const Icon(Icons.notifications),
                  iconSize: 28,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
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

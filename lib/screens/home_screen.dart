import 'package:flutter/material.dart';
import 'package:netflix_clone_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('Cast'),
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.cast),
      ),
      appBar: PreferredSize(
        child: const CustomAppBar(),
        preferredSize: Size(screenSize.width, 50),
      ),
    );
  }
}

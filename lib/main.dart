import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const YouTubeClone(),
    );
  }
}

class YouTubeClone extends StatelessWidget {
  const YouTubeClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          FontAwesomeIcons.youtube,
          color: Colors.red,
        ),
        title: const Text(
          "MyTube",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.bell),
            onPressed: () {},
          ),
          // SizedBox(width: 30),
          IconButton(
            icon: const Icon(FontAwesomeIcons.search),
            onPressed: () {},
          ),
          // SizedBox(width: 30),
          IconButton(
            icon: const CircleAvatar(
              child: Text("SM"),
            ),
            onPressed: () {},
          ),
          // SizedBox(width: 30)
        ],
      ),
      body: const Center(
        child: Text('Body'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.black,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.externalLinkAlt,
            ),
            label: 'shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library,
            ),
            label: '저장함',
          ),
        ],
      ),
    );
  }
}

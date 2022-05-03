import 'package:flutter/material.dart';
import 'package:profile_view/settings.dart';

void main(List<String> args) {
  return runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final itemsList = [Text('Hello'), Text('Hi again'), Settings()];

  int currIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_on_outlined,
              ),
            ),
          ]),
      body: itemsList[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Posts'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Profile')
        ],
        currentIndex: currIndex,
        onTap: (index) => setState(
          () {
            currIndex = index;
          },
        ),
      ),
    );
  }
}

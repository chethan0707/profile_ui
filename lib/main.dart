import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(
            Icons.notifications_on_outlined,
          )
        ],  
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
              'https://raw.githubusercontent.com/londonappbrewery/iamrich/master/images/diamond.png',
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

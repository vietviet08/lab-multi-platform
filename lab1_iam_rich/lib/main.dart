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
              'https://blog.brilliance.com/wp-content/uploads/2017/06/perfect-diamond-isolated-on-shiny-background.jpg',
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: MyWidget()),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: StarBorder(
              side: BorderSide(
            width: 2,
          )),
        ),
        child: GestureDetector(
          onTap: () {
            print('tap!');
          },
        ));
  }
}

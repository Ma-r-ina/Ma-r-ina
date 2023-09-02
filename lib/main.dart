//import 'dart:math';

//import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.green),
//           body: Center(
//                 child: TextButton(onPressed: () { }, child: const Text('Click anywhere on the screen!'),
//                 ),
//           ),
//
//
//       );
//         //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//   }
// }

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyPage()));
}



class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final Random _random = Random();

  Color _color = Colors.purpleAccent;

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        //or with fromRGBO with fourth arg as _random.nextDouble(),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
        ),
      ),
    );
  }
}


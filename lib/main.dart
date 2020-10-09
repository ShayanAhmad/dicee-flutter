import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DieNumber(),
      ),
    ),
  );
}

class DieNumber extends StatefulWidget {
  @override
  _DieNumberState createState() => _DieNumberState();
}

class _DieNumberState extends State<DieNumber> {
  var leftDieNumber = 1;
  var rightDieNumber = 6;

  void changeDieFace() {
    setState(() {
      leftDieNumber = Random().nextInt(6) + 1;
      rightDieNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDieNumber.png'),
              onPressed: () {
                changeDieFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDieFace();
              },
              child: Image.asset('images/dice$rightDieNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var leftDieNumber = 6;
//     var rightDieNumber = 2;
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: FlatButton(
//               child: Image.asset('images/dice$leftDieNumber.png'),
//               onPressed: () {
//                 print('Left die!');
//               },
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print('Right die!');
//               },
//               child: Image.asset('images/dice$rightDieNumber.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shiftend/calendar.dart';

class ShiftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shiftend"),
        backgroundColor: Colors.black87,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Calendar(),//body: Calender(),
    );
  }
}

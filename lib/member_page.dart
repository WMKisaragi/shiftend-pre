import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MemberPage extends StatelessWidget {
  var listItem = ['one', 'two', 'three','for','five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Member"),
        backgroundColor: Colors.black87,
        centerTitle: true,
        elevation: 0.0,
      ),

      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black38),
                ),
              ),
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text('Member $index'),
                subtitle: Text('subtitle'),
                onTap: () { /* react to the tile being tapped */ },
              ));},
        itemCount: listItem.length,
      ),
    );
  }
}

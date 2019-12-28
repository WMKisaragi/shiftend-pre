import 'package:flutter/material.dart';
import 'package:shiftend/shift_page.dart';
import 'package:shiftend/my_page.dart';
import 'package:shiftend/setting_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'shiftend';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _currentIndex = 0;
  final _pageWidgets = [
    ShiftPage(),
    MyPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.event), title: Text('Shift')),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('MyPage')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Setting')),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) => setState(() => _currentIndex = index );
}





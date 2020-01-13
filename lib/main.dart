import 'package:flutter/material.dart';
import 'package:flutter_dart_learn/data_type.dart';
import 'package:flutter_dart_learn/opp_learn.dart';

///入口方法
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dart 基础',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
//    _oopLearn();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            DataType()
          ],
        )
      ),
    );
  }

  void _oopLearn () {
    Logger logger1 = Logger();
    Logger logger2 = Logger();
    print(logger1 == logger2);
  }
}


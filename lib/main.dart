import 'package:flutter/material.dart';
import 'models/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyPage(title: "Demo");
  }
}

class MyPage extends StatefulWidget {
  final String title;

  MyPage({this.title});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: FutureBuilder(
              future: fetchStudentData(),
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return Text(snapshot.data.toString());
                else if (snapshot.hasError) return Text("${snapshot.error}");
                return CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}

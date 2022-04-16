import 'package:flutter/material.dart';
import 'package:full/api/getData.dart';
// import 'package:full/screens/show more.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/json.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<View> _viewList = List<View>();

  @override
  void initState() {
    getData().then((value) {
      setState(() {
        _viewList.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        // actions: [
        //   PopupMenuButton(itemBuilder: (BuildContext context) {

        //   }),
        // ],
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            //String subtext = _viewList[index].des ?? "subtitle";
            return Card(
              child: ListTile(
                  leading: FaIcon(FontAwesomeIcons.solidUserCircle),
                  title: Text(_viewList[index].lan ?? "Title", style: TextStyle(color: Colors.black),),
                  subtitle: //DescriptionTextWidget(text: subtext),
                  Text(_viewList[index].des ?? "subtitle"),
                  ),
            );
          },
          itemCount: _viewList?.length ?? 0,
        ),
      ),
    );
  }
}
/*
Text(_viewList[1].des),

Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            //String subtext = _viewList[index].des ?? "subtitle";
            return Card(
              child: ListTile(
                  leading: FaIcon(FontAwesomeIcons.solidUserCircle),
                  title: Text(_viewList[index].lan ?? "Title", style: TextStyle(color: Colors.black),),
                  subtitle: //DescriptionTextWidget(text: subtext)
                  Text(_viewList[index].des ?? "subtitle"),
                  ),
            );
          },
          itemCount: _viewList?.length ?? 0,
        ),
      ),
*/
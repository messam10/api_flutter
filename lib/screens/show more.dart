import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({@required this.text});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf;
  String secondHalf;
  int lengthText = 15;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > lengthText) {
      firstHalf = widget.text.substring(0, lengthText);
      secondHalf = widget.text.substring(lengthText, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                  style: TextStyle(color: Colors.black),
                ),
                InkWell(
                  child: Text(
                    flag ? "see more" : "see less",
                    style: TextStyle(color: Colors.black54),
                  ),
                  /* flag
                          ? FaIcon(FontAwesomeIcons.accessibleIcon)
                          : FaIcon(FontAwesomeIcons.ups),*/
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }
}
/*
Text(
                        flag ? "see more" : "see less",
                        style: TextStyle(color: Colors.black54),
                      ), 
*/

import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {

  final bool isOnline;

  const ListItem({Key key, this.isOnline}) : super(key: key);
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ItemFullDetails(
            textTitle: "Item 1",
            textInfo: "This is item 1",
            imageText: "assets/img/img-1.jpg"),
        ItemFullDetails(
            textTitle: "Item 2",
            textInfo: "This is item 2",
            imageText: "assets/img/img-2.jpg"),
        ItemFullDetails(
            textTitle: "Item 3",
            textInfo: "This is item 3",
            imageText: "assets/img/img-3.jpg"),
      ],
    );
  }
}

//LIST VIEW ITEMS DETAILS
Widget ItemsText({String textTitle, String textInfo}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 5),
        child: Text(textTitle, style: TextStyle(fontSize: 3)),
      ),
      Padding(
        padding: EdgeInsets.only(right: 5),
        child: Text(textInfo, style: TextStyle(fontSize: 2)),
      ),
    ],
  );
}

Widget ItemFullDetails({String textTitle, String textInfo, String imageText}) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Container(
      child: FittedBox(
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ItemsText(textTitle: textTitle, textInfo: textInfo),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1.0),
                  child: Image.asset(
                    imageText,
                    width: 20,
                    height: 20,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

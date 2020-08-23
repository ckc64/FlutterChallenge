
import 'package:flutter/material.dart';
class ListItem extends StatefulWidget {
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
          ItemFullDetails(textTitle: "Item 1",textInfo: "This is item one",imageText: "assets/img/img-1.jpg"),
          ItemFullDetails(textTitle: "Item 2",textInfo: "This is item two",imageText: "assets/img/img-2.jpg"),
          ItemFullDetails(textTitle: "Item 3",textInfo: "This is item three",imageText: "assets/img/img-3.jpg"),
      ],
    );
  }
}


//LIST VIEW ITEMS
Widget ItemsText({String textTitle,String textInfo}){
  return Column(

    children: <Widget>[
        Container(child: Text(textTitle,
          style: TextStyle(fontSize: 8.0),)),
      Container(child: Text(textInfo,
        style: TextStyle(fontSize: 6.0),)),
    ],
  );

}

Widget ItemFullDetails({String textTitle,String textInfo,String imageText}){
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Container(
   width: 150,
    child:FittedBox(
      child: Material(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            ItemsText(textTitle: textTitle, textInfo: textInfo),

            Container(
              width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imageText,
                   width: 100,
                    height: 100,
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
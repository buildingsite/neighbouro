import 'package:flutter/material.dart';
import 'package:neighboroo/components/chat-screen-components/chat-contacts.dart';
import 'package:neighboroo/components/chat-screen-components/chat-createbar.dart';
import 'package:neighboroo/components/chat-screen-components/chat-recents.dart';
import 'package:neighboroo/components/head.dart';
import 'package:neighboroo/components/nav.dart';
import 'package:neighboroo/models/AssetElement.dart';

import '../../constants.dart';

class NbItemScreen extends StatelessWidget {
  Color colortheme = green;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colortheme,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Create:",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: text_color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: NbChatCreateBar(),),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Recents:",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: text_color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 200.0,
            child: ListView(
              children: <Widget>[
                NbChatRecents(),
                NbChatRecents(),
                NbChatRecents(),
                NbChatRecents()
                ]
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Contacts:",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: text_color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 270.0, maxHeight: 300.0),
            child: Container(
              child: ListView(
                padding: EdgeInsets.all(1.0),
                children: <Widget>[ContactsNeighboroo(), ContactsNeighboroo()]),
              ),
          ),
        ],
      ),
    );
  }
}

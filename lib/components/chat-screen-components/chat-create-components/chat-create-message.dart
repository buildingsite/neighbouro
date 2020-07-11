import 'package:flutter/material.dart';
import 'package:neighboroo/Neighboroo.dart';
import 'package:neighboroo/components/button.dart';
import 'package:neighboroo/components/chat-screen-components/chat-create-components/chat-create-message-components/chat-create-message-contacts.dart';
import 'package:neighboroo/components/headline.dart';
import 'package:neighboroo/constants.dart';

class NbChatCreateMessage extends StatefulWidget {
  Function backbuttonfunction;

  NbChatCreateMessage({this.backbuttonfunction});

  @override
  _NbChatCreateMessageState createState() => _NbChatCreateMessageState();
}

class _NbChatCreateMessageState extends State<NbChatCreateMessage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: red,
      body:ListView(
        children: <Widget>[
          NbHeadline("create a Message"),
          NbCreateMessageContacts(),
          Column(
            children: Neighboroo.getNbChatContactElements(),
          )
        ],
      ),
      
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10,),
              child: NbButton(
                buttonname: "back",
                buttoncolor: box_color,
                buttonheight: 30,
                buttonwidth: 70,
                buttonfunction: this.widget.backbuttonfunction,
              ),
            ),
             Container(
              margin: EdgeInsets.only(right: 10,),
              child: NbButton(
                buttonname: "bsack",
                buttoncolor: box_color,
                buttonheight: 30,
                buttonwidth: 70,
              ),
            ),
          ],
        ),
        color: Colors.transparent,
        elevation: 0,
        ),
    );
  }
}


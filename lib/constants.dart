import 'package:flutter/material.dart';
import 'package:neighboroo/models/Village.dart';
import 'package:neighboroo/models/Element.dart';
import 'package:neighboroo/models/User.dart';
import 'package:neighboroo/screens/Neighboroo/chat-screen.dart';
import 'package:neighboroo/screens/Neighboroo/item-screen.dart';
import 'package:neighboroo/screens/Neighboroo/main-screen.dart';
import 'package:neighboroo/screens/Neighboroo/transport-screen.dart';
import 'package:neighboroo/screens/Neighboroo/service-screen.dart';

//color pallete
const bg  = Color(0xFFEEEEEE);

const green  = Color(0xFFAACC00);
const yellow  = Color(0xFFF4D35E);
const blue  = Color(0xFF4A85D0);

//chat colors
const red  = Color(0xFFEF5359);
const button_red  = Color(0x80EF5359);
const button_green  = Color(0xFFAACC00);

// const red  = Color(0xFFEF5359);
// const red  = Color(0xFFEF5359);


const box_color = Color(0x80D2D2D2);
const text_color = Color(0xFFFFFFFF);

const bar_color = Color(0xFFFFFFF);

const bg_main_object  = Color(0xFF797578);

//shadow pallete
const default_shadow = BoxShadow(
  offset: Offset(0,15),
  blurRadius: 27,
  color: Colors.black12,
);

//format pallete
const outer_padding = 10.0;
const inner_padding = 10.0;

//test object palete
User user = User("mike", "normal dude" ,"michael", "ungar", "mikgmail.com", "this.address", "this.city", "this.country", "this.password");
Village testvillage = new Village("frizging", "Fritzging is a really cool gegend so do not underestimate itFritzging is a really cool gegend so do not underestimate it.Fritzging is a really cool gegend so do not underestimate it", picture: "assets/images/nb-village.jpg");


List<Widget> screens = <Widget>[
    NbChatScreen(),
    NbItemScreen(),
    NbMainScreen(),
    NbTransportScreen(),
    NbWorkScreen(),
  ];


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/constants.dart';

class NbHead extends StatelessWidget {
  Color headcolor;
  String searchtext;
  NbHead({this.headcolor, this.searchtext});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: headcolor,
      elevation: 0,
      actions: <Widget>[
         Expanded(
              child: Container(
                margin: new EdgeInsets.only(right: 10.0, left: 10.0,),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 0.0,
                ),
                width: MediaQuery.of(context).size.width * 0.753,              
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: box_color,
                ),
                child: Center(
                  child: TextField(                     
                    
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        
                        icon: SvgPicture.asset("assets/icons/spec.svg",
                        width: 22.0,
                        height: 22.0,
                      ),
                      focusColor: Colors.blue,
                      fillColor: Colors.black,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      
                      hintText: this.searchtext ?? "search",
                      hintStyle: TextStyle(                    
                    color: Colors.white,
                  ),
              ),
            ),
                ),
          ),
         ),
        Builder(builder: (context)=>
          
          InkWell(
            onTap: () => Scaffold.of(context).openEndDrawer(),
            child: Container(
            margin:
            new EdgeInsets.only(bottom: 0.0, top: 0.0, left: 0.0, right: 10.0),
            child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            child: Image(
              image: AssetImage('assets/images/nb-profilepic.png'),
            ),
            ),
        ),
          ),
        ),
        // SizedBox(
        //   width: MediaQuery.of(context).size.width*0.01,
        // )
      ],
    );
  }
}

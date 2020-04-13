import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/models/chat_page.dart';
class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade400,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_filled),
            title: Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text("Status"),
            )
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone),
              title: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text("Calls"),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.photo_camera),
              title: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text("Camera"),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.conversation_bubble),
              title: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text("Chats"),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings_solid),
              title: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text("Settings"),
              )
          ),
        ],
      ),
      body: getBodyWidget(),
    );
  }
  getBodyWidget(){
    if(_currentIndex == 3){
      return ChatPage();
    }else{
      return Container();
    }
  }
}
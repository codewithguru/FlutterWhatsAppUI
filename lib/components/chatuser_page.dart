import 'package:flutter/material.dart';
class ChatUserPage extends StatefulWidget{
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageSent;
  ChatUserPage({this.text,this.secondaryText,this.image,this.time,this.isMessageSent});
  @override
  _ChatUserPageState createState() => _ChatUserPageState();
}

class _ChatUserPageState extends State<ChatUserPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  maxRadius: 30,
                )  ,
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.text,style: TextStyle(color: Colors.white,fontSize: 16),),
                    SizedBox(height: 8,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.done_all,color: widget.isMessageSent?Colors.blue:Colors.grey.shade600,size: 18,),
                        SizedBox(width: 6,),
                        Text(widget.secondaryText,style: TextStyle(fontSize: 14,color: Colors.grey.shade600,height: 1.3),),
                      ],
                    ),
                    SizedBox(height: 8,),

                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(widget.time,style: TextStyle(fontSize: 12,color: widget.isMessageSent?Colors.blue:Colors.grey.shade600),),
              ],
            ),
          ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(left: 76),
          child: Divider(color: Colors.grey.shade700,height: 1,),
        )
      ],
    );
  }
}
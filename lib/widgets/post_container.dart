import 'package:askyard/models/user_model.dart';
import 'package:askyard/widgets/export_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final User user;
  const PostContainer({
    required this.user,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Container(
        color: Colors.white,
        child: Column(children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: user.imageUrl),
              SizedBox(
                width: 8,
              ),
              Expanded(child: TextField(decoration: InputDecoration.collapsed(hintText: "Bir şey yaz..."),))
            ],
          ),
          Divider(
            height: 10,thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: (){},
                    icon:  const Icon(Icons.videocam,color: Colors.red,),
                    label: Text("Canlı"),
                ),
                const VerticalDivider(width: 8,color: Colors.black26,thickness: 0.5,),
                TextButton.icon(
                  onPressed: (){},
                  icon:  const Icon(Icons.photo_library,color: Colors.green,),
                  label: Text("Şəkillər"),
                ),
                const VerticalDivider(width: 8,color: Colors.black26,thickness: 0.5,),
                TextButton.icon(
                  onPressed: (){},
                  icon:  const Icon(Icons.video_call,color: Colors.purpleAccent,),
                  label: Text("Söhbət"),
                ),
              ],
            ),
          )
        ],
        ),
      ),
    );
  }


}

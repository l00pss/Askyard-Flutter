import 'package:askyard/models/user_model.dart';
import 'package:askyard/utilities/Palette.dart';
import 'package:askyard/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUser;
  Rooms({
    required this.onlineUser,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUser.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: _NewRoomButton(),
              );
            }
            final User user = onlineUser[index-1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          }),
    );
  }
}

class _NewRoomButton extends StatelessWidget {
  const _NewRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(color: Palette.askyardBlue)),
          side: MaterialStateProperty.all<BorderSide?>(
              BorderSide(width: 3, color: Colors.blueAccent)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.red),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
      child: Row(
        children: [
          ShaderMask(
              shaderCallback: (rect) => Palette.roomGradient.createShader(rect),
              child: Icon(Icons.video_call,color: Colors.purple,)),
          SizedBox(
            width: 4,
          ),
          Text("Yayım Et")
        ],
      ),
    );
  }
}

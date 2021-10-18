import 'package:askyard/dataAccess/mockDataAccess.dart';
import 'package:askyard/utilities/Palette.dart';
import 'package:askyard/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            leading: Image.asset("lib/assets/images/askyard_icon.png"),
            title: Text(
              'askyard',
              style: TextStyle(
                  color: Palette.askyardBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                  letterSpacing: -1.2),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(iconData: Icons.search,  iconSize: 30, onPressed: (){}),
              CircleButton(iconData: MdiIcons.facebookMessenger, iconSize: 30, onPressed: (){})
            ],
          ),
          SliverToBoxAdapter(
            child: PostContainer(
              user: MockData.currentUser
            )
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUser:MockData.onlineUsers),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            sliver: SliverToBoxAdapter(
              child: Stories(
                currentuser: MockData.currentUser,
                stories: MockData.stories,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

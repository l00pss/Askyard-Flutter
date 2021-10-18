import 'package:askyard/models/export_models.dart';
import 'package:askyard/utilities/Palette.dart';
import 'package:askyard/widgets/export_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {

  final User currentuser;
  final List<Story> stories;

  const Stories({
    required this.currentuser,
    required this.stories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (context,index){
          if(index == 0){
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(isAddStory: true,currentUser: currentuser,)
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: _StoryCard(currentUser: currentuser,story: story,),
          );
          }
      ),
    );
  }
}


class _StoryCard extends StatelessWidget {
  late bool isAddStory;
  late User? currentUser;
  late Story? story;

  _StoryCard(
  {
    this.isAddStory = false,
    this.currentUser,
    this.story
  }
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
              imageUrl: isAddStory ? currentUser!.imageUrl: story!.imageUrl,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: Palette.storyGradient,
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        Positioned(
            top: 5,
            left: 5,
            child: isAddStory ?
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.add),
                    iconSize: 30,
                    color: Palette.askyardBlue,
                    onPressed: (){},
                  ),
                )
                : ProfileAvatar(
                imageUrl: story!.user.imageUrl
                ,hasBorder: !story!.isViewed,
            )
        ),
        Positioned(
            bottom: 8,
            right: 8,
            left: 8,
            child: Text(
              isAddStory? "Əlavə Et" : story!.user.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
        )
      ],
    );
  }


}

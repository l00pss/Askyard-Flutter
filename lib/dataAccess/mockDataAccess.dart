import 'package:flutter/material.dart';
import 'package:askyard/models/export_models.dart';

class MockData{

  static User currentUser = User(
      name: "Vugar",
      imageUrl: "https://scontent.fgyd12-1.fna.fbcdn.net/v/t1.6435-9/104725017_305481753807976_8327771419443867080_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=glDY7nO-Q08AX-461QU&_nc_ht=scontent.fgyd12-1.fna&oh=f99d055654e95bf46e203701ba07f80f&oe=61917A4D");

  static List<User> onlineUsers = [
    User(name: "Kamil Ceferov", imageUrl: "https://media.istockphoto.com/photos/young-smart-man-wearing-glasses-and-a-folded-polo-neck-picture-id1190021238?k=20&m=1190021238&s=612x612&w=0&h=nzJ2lYB-2x0yCguE4vO27dJcbH5NT2191hkc3f1WxAs="),
    User(name: "Rufet Kubinka", imageUrl: "https://images.unsplash.com/photo-1560250097-0b93528c311a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29uYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
    User(name: "Aybeniz Hesenova", imageUrl: "https://media.istockphoto.com/photos/headshot-of-mature-50-years-old-asian-business-woman-on-grey-picture-id1317784594?b=1&k=20&m=1317784594&s=170667a&w=0&h=BV1ABS-tDluO-Qa0myWpstZFJd6navrs7OezTyNHnVg="),
    User(name: "Arif Mehraliyev", imageUrl: "https://media.istockphoto.com/photos/bookish-guy-in-black-picture-id613650382?k=20&m=613650382&s=612x612&w=0&h=ykZFdRXYMWfUkQpROgbrgoRWAYXdO4IHmvhF4xXibmM="),
    User(name: "Aga Uzdenirax", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6woGGV8G2cz_QWHDmGcBNCRxOknC9hueGHHcIvQWhK2lawXFg3vcpNYivMXRlz7UYt-0&usqp=CAU"),
    User(name: "Bayram Nurlu", imageUrl: "https://www.kimnereli.net/wp-content/uploads/2018/06/bayram-nurlu.jpg"),
    User(name: "Harin Deputatoglu", imageUrl: "https://media.istockphoto.com/photos/interior-designer-feeling-good-while-working-on-new-project-picture-id1140711121?k=20&m=1140711121&s=612x612&w=0&h=Bay0wJ9ZfJxOs9ThmkwnFu_l75uARDkmu1kq27PJuxU=")
  ];

  static List<Story> stories = [
    Story(
        user: onlineUsers[1],
        imageUrl: "https://i.pinimg.com/originals/8f/b9/14/8fb91408933b0e459ff9afdb28e23f1e.jpg"),
    Story(
        user: onlineUsers[3],
        imageUrl: "https://i.pinimg.com/originals/8f/b9/14/8fb91408933b0e459ff9afdb28e23f1e.jpg"),
    Story(
        user: onlineUsers[2],
        imageUrl: "https://i.pinimg.com/originals/8f/b9/14/8fb91408933b0e459ff9afdb28e23f1e.jpg"),
    Story(
        user: onlineUsers[4],
        imageUrl: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*"),
    Story(
        user: onlineUsers[6],
        imageUrl: "https://images.wallpapersden.com/image/download/mood-galaxy-note-8-stock_am1paGmUmZqaraWkpJRmaWllrWdqa2U.jpg"),
    Story(
        user: onlineUsers[5],
        imageUrl: "https://www.winwallpapers.net/w1/2018/01/Dresden-Wallpapers-for-Note-8.jpg"),
    Story(
        user: onlineUsers[0],
        imageUrl: "https://cdn.wallpapersafari.com/67/39/mlrWHv.jpg"),
    Story(
        user: onlineUsers[6],
        imageUrl: "https://cdn57.androidauthority.net/wp-content/uploads/2017/08/android-authority-samsung-galaxy-note-8-wallpaper-13.png")
  ];

  static List<Post> posts = [
    Post(
      user: currentUser,
      caption: 'Check out these cool puppers',
      timeAgo: '58m',
      imageUrl: 'https://images.unsplash.com/photo-1525253086316-d0c936c814f8',
      likes: 1202,
      comments: 184,
      shares: 96,
    ),
    Post(
      user: onlineUsers[5],
      caption:
      'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      timeAgo: '3hr',
      imageUrl: null,
      likes: 683,
      comments: 79,
      shares: 18,
    ),
    Post(
      user: onlineUsers[4],
      caption: 'This is a very good boi.',
      timeAgo: '8hr',
      imageUrl:
      'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      likes: 894,
      comments: 201,
      shares: 27,
    ),
    Post(
      user: onlineUsers[3],
      caption: 'Adventure 🏔',
      timeAgo: '15hr',
      imageUrl:
      'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      likes: 722,
      comments: 183,
      shares: 42,
    ),
    Post(
      user: onlineUsers[0],
      caption:
      'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      timeAgo: '1d',
      imageUrl: null,
      likes: 482,
      comments: 37,
      shares: 9,
    ),
    Post(
      user: onlineUsers[6],
      caption: 'A classic.',
      timeAgo: '1d',
      imageUrl:
      'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      likes: 1523,
      shares: 129,
      comments: 301,
    )
  ];


}
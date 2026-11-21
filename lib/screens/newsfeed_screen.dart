import 'package:flutter/material.dart';
import 'package:penabella_mobprog/widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String myProfilePic = "assets/images/marvel_pfp.jpg";

    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Steve Rogers',
          userImage: 'assets/images/captain_america_pfp.jpg',
          currentUserImage: myProfilePic,
          postContent: 'I can do this all day! #AvengersAssemble',
          date: '2 hours ago',
          numOfLikes: 10,
        ),
        NewsFeedCard(
          userName: 'Tony Stark',
          userImage: 'assets/images/iron_man_pfp.jpg',
          currentUserImage: myProfilePic,
          postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist', 
          date: 'December 1, 2023',
          numOfLikes: 3000,
          hasImage: true,
        ),
      ],
    );
  }
}
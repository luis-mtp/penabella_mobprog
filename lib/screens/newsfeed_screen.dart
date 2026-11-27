import 'package:flutter/material.dart';
import 'package:penabella_mobprog/widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Steve Rogers',
          userImage: 'assets/images/captain_america_pfp.jpg',
          postContent: 'I can do this all day! #AvengersAssemble',
          date: '2 hours ago',
          numOfLikes: 10,
        ),
        NewsFeedCard(
          userName: 'Tony Stark',
          userImage: 'assets/images/iron_man_pfp.jpg',
          postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist', 
          date: 'December 1, 2023',
          numOfLikes: 3000,
          hasImage: true,
          postImage: 'assets/images/iron_man.jpg',
        ),
        NewsFeedCard(
          userName: 'yaBoiClint',
          userImage: 'assets/images/hawkeye_pfp.jpg',
          postContent: "Retiring from this hero stuff. See ya'll in japan. #GettingOld", 
          date: 'April 26, 2019',
          numOfLikes: 2,
        ),
        NewsFeedCard(
          userName: 'THE Hulk',
          userImage: 'assets/images/hulk_pfp.jpg',
          postContent: 'This banner, not hulk! #HulkSmash', 
          date: '5 days ago',
          numOfLikes: 66,
          hasImage: true,
          postImage: 'assets/images/hulk_post.jpg',
        ),
        NewsFeedCard(
          userName: 'Placeholder 5',
          postContent: "Placeholder", 
          date: 'X days ago',
          numOfLikes: 1,
          hasImage: true,
        ),
        NewsFeedCard(
          userName: 'Placeholder 6',
          postContent: "Placeholder", 
          date: 'X days ago',
          numOfLikes: 1,
        ),
        NewsFeedCard(
          userName: 'Bruce Wayne',
          userImage: 'assets/images/batman_pfp.jpg',
          postContent: "I am not batman. #ImBatman", 
          date: '1 day ago',
          numOfLikes: 18,
        ),
        NewsFeedCard(
          userName: 'Placeholder 8',
          postContent: "Placeholder", 
          date: 'X days ago',
          numOfLikes: 1,
          hasImage: true,
        ),
        NewsFeedCard(
          userName: 'Placeholder 9',
          postContent: "Placeholder", 
          date: 'X days ago',
          numOfLikes: 1,
          hasImage: true,
        ),
        NewsFeedCard(
          userName: 'Placeholder 10',
          postContent: "Placeholder", 
          date: 'X days ago',
          numOfLikes: 1,
        ),
      ],
    );
  }
}
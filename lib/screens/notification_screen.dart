import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:penabella_mobprog/widgets/notification_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NotificationWidget(
          userImage: 'assets/images/captain_america_pfp.jpg',
          userName: 'Steve Rogers',
          post: 'I can do this all day! #AvengersAssemble',
          description: 'Steve Rogers uploaded a post.',
        ),
        NotificationWidget(
          userImage: 'assets/images/iron_man_pfp.jpg',
          userName: 'Tony Stark',
          post: 'I am Iron Man. #GeniusBillionairePlay...',
          description: 'Tony Stark uploaded a photo.',
        ),
        NotificationWidget(
          userImage: 'assets/images/hawkeye_pfp.jpg',
          userName: 'yaBoiClint',
          post: 'Retiring from this hero stuff. See ya...',
          description: 'yaBoiClint uploaded a post.',
        ),
        NotificationWidget(
          userImage: 'assets/images/hulk_pfp.jpg',
          userName: 'THE Hulk',
          post: 'This banner, not hulk! #HulkSmash',
          description: 'THE Hulk uploaded a photo.',
        ),
        NotificationWidget(
          userName: 'Placeholder 5',
          post: 'Placeholder',
          description: 'Placeholder uploaded a photo.',
        ),
        NotificationWidget(
          userName: 'Placeholder 6',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userImage: 'assets/images/batman_pfp.jpg',
          userName: 'Bruce Wayne',
          post: 'I am not Batman. #ImBatman',
          description: 'Bruce Wayne uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 8',
          post: 'Placeholder',
          description: 'Placeholder uploaded a photo.',
        ),
        NotificationWidget(
          userName: 'Placeholder 9',
          post: 'Placeholder',
          description: 'Placeholder uploaded a photo.',
        ),
        NotificationWidget(
          userName: 'Placeholder 10',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 11',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 12',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 13',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 14',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 15',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 16',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 17',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 18',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 19',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
        NotificationWidget(
          userName: 'Placeholder 20',
          post: 'Placeholder',
          description: 'Placeholder uploaded a post.',
        ),
      ],
    );
  }
}
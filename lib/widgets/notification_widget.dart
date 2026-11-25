import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:penabella_mobprog/widgets/custom_text.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.userName,
    required this.post,
    required this.description,
  });

  final String userName;
  final String post;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          Icon(Icons.person),
          SizedBox(width: ScreenUtil().setSp(10)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: userName,
                fontSize: ScreenUtil().setSp(20),
                color: Colors.black,
                fontWeight: FontWeight.w800
              ),
              CustomText(
                text: 'Post: $post',
                fontSize: ScreenUtil().setSp(13),
                color: Colors.black,
              ),
              CustomText(
                text: description,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
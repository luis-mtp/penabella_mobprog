import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:penabella_mobprog/constants.dart';
import 'package:penabella_mobprog/widgets/custom_text.dart';

class NotificationWidget extends StatefulWidget {
  final String userName;
  final String post;
  final String description;
  
  final bool? hasImage;
  final String? userImage;

  const NotificationWidget({
    super.key,
    required this.userName,
    required this.post,
    required this.description,

    this.hasImage,
    this.userImage,
  });

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: screenUtilWidth,
        vertical: ScreenUtil().setHeight(3),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Row(
          children: [
            CircleAvatar(
                  radius: ScreenUtil().setSp(18),
                  backgroundColor: Colors.grey[300],
                  backgroundImage: widget.userImage != null
                      ? AssetImage(widget.userImage!)
                      : null,
                  child: widget.userImage == null
                      ? const Icon(Icons.person, color: Colors.white)
                      : null,
                ),
            SizedBox(width: screenUtilWidth),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.userName,
                  fontSize: screenUtilFontUserNameSize,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: 'Post: ${widget.post}',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black,
                ),
                CustomText(
                  text: widget.description,
                  fontSize: ScreenUtil().setSp(12),
                  color: sideColor,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
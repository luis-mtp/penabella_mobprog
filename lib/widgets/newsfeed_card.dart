import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:penabella_mobprog/constants.dart';
import 'package:penabella_mobprog/widgets/custom_text.dart';

class NewsFeedCard extends StatefulWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;

  final String? userImage;
  final String? currentUserImage;
  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
    this.userImage,
    this.currentUserImage,
  });

  @override
  State<NewsFeedCard> createState() => _NewsFeedCardState();
}

class _NewsFeedCardState extends State<NewsFeedCard> {
  bool isLiked = false;
  int likeCount = 0;
  final FocusNode _commentFocusNode = FocusNode();
  final TextEditingController _commentController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    likeCount = widget.numOfLikes ?? 0;
  }

  @override
  void dispose() {
    _commentFocusNode.dispose();
    _commentController.dispose();
    super.dispose();
  }

  void _focusCommentField() {
    _commentFocusNode.requestFocus();
  }

  void _toggleLike() {
    setState(() {
      if (isLiked) {
        isLiked = false;
        likeCount--;
      } else {
        isLiked = true;
        likeCount++;
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);
    
    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: widget.date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            // ? POST CONTENT
            CustomText(
              text: widget.postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            widget.hasImage == true
              ? const Image(image: AssetImage('assets/images/iron_man.jpg'))
              : SizedBox. shrink(),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: _toggleLike, // ! ADDED LIKE ACTION
                    icon: Icon(
                      isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                      color: isLiked ? fbPrimary : Colors.grey,
                    ), // ! CHANGE ICON AND COLOR
                    label: CustomText(
                      text: likeCount.toString(),
                      fontSize: ScreenUtil().setSp(12),
                      color: isLiked ? fbPrimary : fbDarkPrimary,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: _focusCommentField, // ! ADDED COMMENT ACTION
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Colors.grey,
                      size: ScreenUtil().setSp(15),
                    ),
                    label: CustomText(
                      text: 'Comment',
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {}, // ! COMMENT BUTTON ACTION
                    icon: Icon(Icons.redo, color: Colors.grey),
                    label: CustomText (
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setSp(14),
                    backgroundColor: Colors.grey[300],
                    backgroundImage: widget.currentUserImage != null
                        ? AssetImage(widget.currentUserImage!)
                        : null,
                    child: widget.currentUserImage == null
                        ? const Icon(Icons.person, color: Colors.white, size: 18)
                        : null,
                  ),
                  SizedBox(width: ScreenUtil().setWidth(10)),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(10),
                      0,
                      0,
                      0,
                    ),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(25),
                    width: ScreenUtil().setWidth(330),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(10)),
                      ),
                    ),
                    child: CustomText(
                      text: 'Write a comment ... ',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              CustomText(
                text: 'View all comments',
                fontSize: ScreenUtil().setSp(12),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
          ],
        ),
      ),
    );
  }
}
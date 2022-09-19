import 'package:flutter/material.dart';
import 'package:newapp/classes/comment.dart';
import 'package:newapp/widgets/black_button.dart';
import 'package:newapp/widgets/comment_card.dart';

class CommentModalSheet extends StatelessWidget {
  @override
  List<Comment> commentList;
  CommentModalSheet(this.commentList);
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              child: Text(
                'Related',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: BlackButton(Alignment.topLeft, 'Top'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: BlackButton(Alignment.topLeft, 'Newest'),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: RichText(
            text: const TextSpan(
              text: 'Remember to keep comments respectful and to follow our ',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
              children: [
                TextSpan(
                  text: 'Community Guidelines',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/Round.png'),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Add comment..',
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none),
                cursorColor: Colors.transparent,
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
              itemCount: commentList.length,
              itemBuilder: (context, index) {
                return CommentCard(commentList[index]);
              }),
        )
      ],
    );
  }
}

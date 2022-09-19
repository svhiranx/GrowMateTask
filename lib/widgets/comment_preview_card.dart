import 'package:flutter/material.dart';
import 'package:newapp/classes/comment.dart';
import 'package:newapp/modal_sheets/comment_modal_sheet.dart';

class CommentPreviewCard extends StatelessWidget {
  Comment comment;
  CommentPreviewCard(this.comment);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(comment.dpUrl),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 20),
              child: RichText(
                maxLines: 3,
                text: TextSpan(
                  text: comment.username,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  children: [
                    TextSpan(
                        text: '    ${comment.comment}'.substring(1, 110),
                        style: const TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: Colors.black)),
                    TextSpan(
                      text: '... more...',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

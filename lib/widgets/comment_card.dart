import 'package:flutter/material.dart';
import 'package:newapp/classes/comment.dart';

class CommentCard extends StatelessWidget {
  Comment comment;

  CommentCard(this.comment);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(comment.dpUrl),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '${comment.username} . ${comment.time}',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 20, bottom: 10),
            child: Text(
              comment.comment,
              style: const TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Colors.black),
            ),
          ),
          Row(
            children: [
              Wrap(
                spacing: 10,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Icon(
                      Icons.thumb_up_off_alt,
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.thumb_down_off_alt_outlined,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.message,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 50, top: 10),
                child: Text(
                  '${comment.replies} REPLIES ',
                  style: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ))
        ],
      ),
    );
  }
}

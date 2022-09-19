import 'package:flutter/material.dart';
import 'package:newapp/classes/comment.dart';
import 'package:newapp/main.dart';
import 'package:newapp/modal_sheets/comment_modal_sheet.dart';
import 'package:newapp/widgets/comment_preview_card.dart';
import 'package:newapp/widgets/headline.dart';

class Reactions extends StatelessWidget {
  List<Comment> commentList = [
    Comment(
        username: 'Prof.alison',
        comment:
            'If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations.The drills around Taiwan allowed China to build upforces in Fujian, which is part of what\'s needed before an invasion.',
        time: '1h ago',
        dpUrl: 'lib/assets/alison.png',
        replies: 5),
    Comment(
        username: 'Prof.alison',
        comment:
            'If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations.The drills around Taiwan allowed China to build upforces in Fujian, which is part of what\'s needed before an invasion.',
        time: '1h ago',
        dpUrl: 'lib/assets/alison.png',
        replies: 5),
    Comment(
        username: 'Prof.alison',
        comment:
            'If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations.The drills around Taiwan allowed China to build upforces in Fujian, which is part of what\'s needed before an invasion.',
        time: '1h ago',
        dpUrl: 'lib/assets/alison.png',
        replies: 5),
    Comment(
        username: 'Prof.alison',
        comment:
            'If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations.The drills around Taiwan allowed China to build upforces in Fujian, which is part of what\'s needed before an invasion.',
        time: '1h ago',
        dpUrl: 'lib/assets/alison.png',
        replies: 5),
    Comment(
        username: 'Prof.alison',
        comment:
            'If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations.The drills around Taiwan allowed China to build upforces in Fujian, which is part of what\'s needed before an invasion.',
        time: '1h ago',
        dpUrl: 'lib/assets/alison.png',
        replies: 5),
    Comment(
        username: 'Prof.alison',
        comment:
            'If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations.The drills around Taiwan allowed China to build upforces in Fujian, which is part of what\'s needed before an invasion.',
        time: '1h ago',
        dpUrl: 'lib/assets/alison.png',
        replies: 5)
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 25, right: 5),
              child: Icon(
                Icons.person_outline_sharp,
                color: Color.fromRGBO(104, 118, 132, 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, right: 10),
              child: Text('215',
                  style: TextStyle(
                    //for Tab text
                    fontFamily: 'Lato',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(104, 118, 132, 1),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 5),
              child: Icon(
                Icons.chat_bubble_outline,
                color: Color.fromRGBO(104, 118, 132, 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, right: 10),
              child: Text(
                '95K',
                style: TextStyle(
                  //for Tab text
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(104, 118, 132, 1),
                ),
              ),
            )
          ],
        ),
        GestureDetector(
            onTap: () => showModalBottomSheet(
                context: context,
                builder: (context) {
                  return CommentModalSheet(commentList);
                }),
            child: Column(children: [
              ...commentList.take(2).map(
                (e) {
                  return CommentPreviewCard(e);
                },
              ),
            ])),
        Row(
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Add comment..',
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 50), child: Text('😂😍'))
          ],
        ),
      ],
    );
  }
}

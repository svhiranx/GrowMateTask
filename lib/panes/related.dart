import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/classes/related_news_entry.dart';
import 'package:newapp/modal_sheets/related_modal_sheet.dart';
import 'package:newapp/widgets/related_news_card.dart';

class Related extends StatelessWidget {
  List<RelatedNewsEntry> relatedNewsList = [
    RelatedNewsEntry(
        thumbnailUrl: 'lib/assets/liz_truss.png',
        title: 'Liz Truss will be UK\'s next Prime Minister? '),
    RelatedNewsEntry(
        thumbnailUrl: 'lib/assets/british_railway.png',
        title: 'British Pound will fall after Prime Minister elections?'),
    RelatedNewsEntry(
        thumbnailUrl: 'lib/assets/liz_truss.png',
        title: 'Liz Truss will be UK\'s next Prime Minister? '),
    RelatedNewsEntry(
        thumbnailUrl: 'lib/assets/british_railway.png',
        title: 'British Pound will fall after Prime Minister elections?'),
    RelatedNewsEntry(
        thumbnailUrl: 'lib/assets/british_railway.png',
        title: 'British Railway Strikes will end by before Sept. 2022?')
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        int sensitivity = 8;
        if (details.delta.dy < -sensitivity) {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return RelatedModalSheet(relatedNewsList);
              });
        }
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ...relatedNewsList.take(2).map(
          (e) {
            return RelatedNewsCard(e.thumbnailUrl, e.title);
          },
        ),
        Container(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
          child: Text(
            'more...',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        )
      ]),
    );
  }
}

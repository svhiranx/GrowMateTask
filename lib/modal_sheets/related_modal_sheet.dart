import 'package:flutter/material.dart';
import 'package:newapp/classes/related_news_entry.dart';
import 'package:newapp/widgets/news_list.dart';
import 'package:newapp/widgets/related_news_card.dart';
import '../widgets/black_button.dart';

class RelatedModalSheet extends StatelessWidget {
  @override
  List<RelatedNewsEntry> relatedNewsList;
  RelatedModalSheet(this.relatedNewsList);
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
              ))),
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
        Expanded(
          child: ListView.builder(
              itemCount: relatedNewsList.length,
              itemBuilder: (context, index) {
                return RelatedNewsCard(relatedNewsList[index].thumbnailUrl,
                    relatedNewsList[index].title);
              }),
        )
      ],
    );
  }
}

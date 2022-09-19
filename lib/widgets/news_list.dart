import 'package:flutter/material.dart';
import 'package:newapp/classes/news_entry.dart';
import 'package:intl/intl.dart';

class NewsList extends StatelessWidget {
  List<NewsEntry> newsList = [
    NewsEntry(
        date: DateTime(2020, 9, 1),
        name: 'Thehill',
        description:
            'Last week, the dire warnings that appeared in the Wall Street Journal, The Economist and Foreign Affairs about China\'s imminent war with or...'),
    NewsEntry(
        date: DateTime(2020, 9, 1),
        name: 'BBC',
        description:
            'Most people the BBC spoke to do not believe China is about to attack Taiwan. "They\'re a bunch of gangsters," said one man fishing on the...'),
    NewsEntry(
        date: DateTime(2020, 9, 1),
        name: 'BBC',
        description:
            'Most people the BBC spoke to do not believe China is about to attack Taiwan. "They\'re a bunch of gangsters," said one man fishing on the...'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newsList.length,
        itemBuilder: (context, a) {
          return Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
                //minHeight: MediaQuery.of(context).size.height * 0.4,
                maxHeight: MediaQuery.of(context).size.height * 0.2),
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Text(newsList[a].name,
                            style: Theme.of(context).textTheme.headline5),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6 - 130,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child:
                              Text(DateFormat.MMMd().format(newsList[a].date))),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        newsList[a].description,
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Container(
                        child: Icon(Icons.subdirectory_arrow_right),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

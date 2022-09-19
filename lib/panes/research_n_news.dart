import 'package:flutter/material.dart';
import 'package:newapp/widgets/chartbar.dart';
import 'package:newapp/classes/news_entry.dart';
import 'package:intl/intl.dart';
import 'package:newapp/widgets/news_list.dart';

class ResearchAndNews extends StatelessWidget {
  List<Map<String, Object>> chartData = [
    {'Opinion': 'Buy Yes', 'data': 0.12},
    {'Opinion': 'Buy No', 'data': 0.84},
    {'Opinion': 'No Resolve', 'data': 0.05},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: Text(
                '215 Expert Opinion',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(104, 118, 132, 1)),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(children: [
            Stack(children: [
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(247, 232, 247, 1)),
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(242, 214, 242, 1)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '12%',
                        style: Theme.of(context).textTheme.headline2,
                      )),
                ),
              ),
            ]),
            Expanded(
              child: Column(
                children: chartData.map(
                  (e) {
                    return ChartBar(e['Opinion'], e['data']);
                  },
                ).toList(),
              ),
            ),
          ]),
        ),
        NewsList(),
        Container(
          height: 2,
        )
      ],
    );
  }
}

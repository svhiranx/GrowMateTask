import 'package:flutter/material.dart';
import 'package:newapp/panes/reactions.dart';
import 'package:newapp/panes/related.dart';
import 'package:newapp/widgets/headline.dart';
import 'package:newapp/panes/research_n_news.dart';
import 'widgets/bottom_navbar.dart';
import 'widgets/predict_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Lato',
        textTheme: const TextTheme(
          headline2: TextStyle(
              //for Tab text
              fontFamily: 'Lato',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(228, 50, 193, 1)),
          bodyText1: TextStyle(
            //for News entry
            fontFamily: 'Lato',
            fontSize: 13,
            fontWeight: FontWeight.w100,
          ),
          headline5: TextStyle(
            //for Related news Entry
            fontFamily: 'Lato',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
              // more.. /add comment
              fontFamily: 'Lato',
              fontSize: 14,
              color: Color.fromRGBO(153, 153, 153, 1)),
          headline3: TextStyle(
              // modal sheet headline
              fontFamily: 'Lato',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(104, 113, 132, 1)),
          subtitle2: TextStyle(
              fontFamily: 'Lato',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(104, 113, 132, 1)),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: height,
              color: Colors.black,
            ),
            Flexible(
              child: Stack(children: [
                HeadLine(),
              ]),
              fit: FlexFit.loose,
              flex: 50,
            ),
            Flexible(
              child: Choices(),
              fit: FlexFit.tight,
              flex: 15,
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 60,
              child: Column(
                children: [
                  TabBar(
                    labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    isScrollable: true,
                    indicatorColor: Color.fromRGBO(228, 50, 193, 1),
                    labelStyle: Theme.of(context).textTheme.headline2,
                    labelColor: Color.fromRGBO(228, 50, 193, 1),
                    unselectedLabelColor: Color.fromRGBO(104, 118, 132, 1),
                    unselectedLabelStyle: Theme.of(context).textTheme.headline2,
                    tabs: const [
                      Tab(
                        text: 'Research & News',
                      ),
                      Tab(
                        text: 'Reactions',
                      ),
                      Tab(
                        text: 'Related',
                      ),
                    ],
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.label,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [ResearchAndNews(), Reactions(), Related()],
                      controller: _tabController,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BotNavBar(),
    );
  }
}

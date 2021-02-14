import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:made/GlobalVars.dart';
import 'package:made/Screens/ModelView/main.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(backgroundColor: darkPrimaryColor),
        child: Scaffold(
          backgroundColor: darkPrimaryColor,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              primaryColor: whiteColor,
            ),
            child: Container(
              color: whiteColor,
              child: TabBar(
                labelColor: theardPrimaryColor,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: Icon(Icons.emoji_events),
                    text: "Events",
                  ),
                  Tab(
                    icon: Icon(Icons.military_tech),
                    text: "Agents",
                  ),
                  Tab(
                    icon: Icon(Icons.inventory),
                    text: "Protocols",
                  ),
                  Tab(
                    icon: Icon(Icons.folder),
                    text: "Documents",
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: ModelScreen(
                title: "Event",
              ),
            ),
            Center(
              child: ModelScreen(
                title: "Agent",
              ),
            ),
            Center(
              child: ModelScreen(
                title: "Protocols",
              ),
            ),
            Center(
              child: ModelScreen(
                title: "Documents",
              ),
            )
          ]),
        ),
      ),
    );
  }
}

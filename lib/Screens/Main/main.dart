import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:made/GlobalVars.dart';
import 'package:made/Screens/Events/main.dart';

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
                    icon: Icon(Icons.event),
                    text: "Events",
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: "Agents",
                  ),
                  Tab(
                    icon: Icon(Icons.dock),
                    text: "Protocols",
                  ),
                  Tab(
                    icon: Icon(Icons.file_copy),
                    text: "Documents",
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: EventsScreen(),
            ),
            Center(
              child: Text("Agents"),
            ),
            Center(
              child: Text("Protocols"),
            ),
            Center(
              child: Text("Documents"),
            )
          ]),
        ),
      ),
    );
  }
}

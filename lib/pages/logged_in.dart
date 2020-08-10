import 'package:flutter/material.dart';
import 'summary.dart';

class LoggedInPage extends StatefulWidget {
  @override
  _LoggedInPageState createState() => _LoggedInPageState();
}

class _LoggedInPageState extends State<LoggedInPage> {
  var tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          setState(() {
            tabIndex = i;
          });
        },
        currentIndex: tabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.healing),
            title: Text("Summary"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("Community"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("List"),
          ),
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return SummaryPage();
  }
}

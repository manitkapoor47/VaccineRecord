import 'package:flutter/material.dart';
import 'meal.dart';
import 'vaccine/vaccine.dart';

class SummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
              ),
              child: Text("Tommy"),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text("Meal"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MealPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Info"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.wc),
              title: Text("Bathroom"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.child_care),
              title: Text("Vaccination Record"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VaccineRec(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}

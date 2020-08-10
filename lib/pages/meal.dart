import 'package:flutter/material.dart';

class MealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Container(
                  color: Colors.grey.shade200,
                  child: AspectRatio(
                    aspectRatio: 400 / 250,
                    child: Image.network("https://unsplash.it/400/250?image=5"),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      color: Theme.of(context).primaryColor,
                      child: Text("Explore this recipe"),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Save it to my cart"),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import "DisplayVaccineRecord.dart";
import 'list.dart';

//Widget for the DropDownMenu and to display the list of vaccines of the chosen age group
class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> agegroups = ["All", "<1", "1-3", ">3"];
  //List containing the intems of the DropDownMenu
  String selected; //stores the selected value
  Widget wid = new Container(height: 0.0, width: 0.0);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: DropdownButton<String>(
            items: agegroups.map((String age) {
              return DropdownMenuItem(value: age, child: (Text(age)));
            }).toList(),
            hint: Text("Select the Age Group"),
            underline: Container(
              height: 2,
              color: Colors.purple,
            ),
            value: selected,
            onChanged: (value) {
              setState(() {
                selected = value;
                if (selected == "All") {
                  wid = Expanded(child: DisplayVaccineRecord(vaccinesall));
                } else if (selected == "<1") {
                  wid = Expanded(child: DisplayVaccineRecord(vaccines1));
                } else if (selected == "1-3") {
                  wid = Expanded(child: DisplayVaccineRecord(vaccines2));
                } else if (selected == ">3") {
                  wid = Expanded(child: DisplayVaccineRecord(vaccines3));
                }
              });
            },
          )),
      wid
    ]);
  }
}

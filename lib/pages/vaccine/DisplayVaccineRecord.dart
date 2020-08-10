import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'class.dart';

//Widget to display the list of vaccines
class DisplayVaccineRecord extends StatefulWidget {
  final List<Vaccine> passed;
  DisplayVaccineRecord(this.passed);
  @override
  _DisplayVaccineRecordState createState() => _DisplayVaccineRecordState();
}

class _DisplayVaccineRecordState extends State<DisplayVaccineRecord> {
  void check(Vaccine v) {
    setState(() {
      v.done = !v.done;
      v.dateTime = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    var vaccines =
        this.widget.passed; //renamed the passed List<Vaccine> to vaccines
    return ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: vaccines.length,
        itemBuilder: (context, index) {
          return Card(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Column(children: <Widget>[
                CheckboxListTile(
                  title: ListTile(
                      title: Text(vaccines[index].name,
                          style: TextStyle(fontSize: 25)),
                      subtitle: Text(vaccines[index].recommend,
                          style: TextStyle(fontSize: 20))),
                  onChanged: (bool newValue) => check(vaccines[index]),
                  value: vaccines[index].done,
                ),
                vaccines[index].done
                    ? Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: FlatButton.icon(
                                icon: Icon(Icons.calendar_today),
                                onPressed: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate:
                                              vaccines[index].dateTime == null
                                                  ? DateTime.now()
                                                  : vaccines[index].dateTime,
                                          firstDate: DateTime(2001),
                                          lastDate: DateTime(2050))
                                      .then((date) {
                                    setState(() {
                                      vaccines[index].dateTime = date;
                                    });
                                  });
                                },
                                label: vaccines[index].dateTime == null
                                    ? Text("Select the Date of Immunization")
                                    : Text(DateFormat('yyyy-MM-dd')
                                        .format(vaccines[index].dateTime)))))
                    : new Container(height: 0.0, width: 0.0)
              ]));
        });
  }
}

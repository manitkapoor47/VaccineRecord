import 'package:flutter/material.dart';
import 'DropDown.dart';

class VaccineRec extends StatefulWidget {
  @override
  _VaccineRecState createState() => _VaccineRecState();
}

class _VaccineRecState extends State<VaccineRec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Vaccination Record")), body: DropDown());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_plus/screens/diagnosis_appointment.dart';
import 'package:provider/provider.dart';
import 'package:health_plus/appstate.dart';

class NewDiagnosis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Colors.black),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'New Diagnosis',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          doctorList(context, 'Dr. Aravind'),
          doctorList(context, 'Dr. Sakthi'),
          doctorList(context, 'Dr. Santhosh'),
          doctorList(context, 'Dr. Alfred'),
          doctorList(context, 'Dr. Aravind'),
          doctorList(context, 'Dr. Sakthi'),
          doctorList(context, 'Dr. Santhosh'),
          doctorList(context, 'Dr. Alfred')
        ],
      ),
    );
  }
}

Widget doctorList(context, doctorName) {
  final appState = Provider.of<AppState>(context);
  return InkWell(
    onTap: () {
      appState.setName(doctorName);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DiagnosisAppointment()));
    },
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              SvgPicture.asset('images/Ellipse.svg'),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(doctorName,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text(
                      'General Physician',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text('Coimbatore', style: TextStyle(color: Colors.black))
                  ],
                ),
              )
            ],
          ),
        ),
        Divider()
      ],
    ),
  );
}

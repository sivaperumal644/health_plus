import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:health_plus/appstate.dart';

class DiagnosisAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back, color: Colors.black,),),
        backgroundColor: Colors.white,
        title: Text('New Diagnosis', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: SvgPicture.asset(
                'images/Ellipse.svg',
                width: 120,
                height: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                'Appointment fixed',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                appState.getName,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Dr. Aravind usually responds within a day.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Text('We will notify you when he is online.',
                style: TextStyle(fontSize: 14))
          ],
        ),
      ),
    );
  }
}

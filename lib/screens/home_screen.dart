import 'package:flutter/material.dart';
import 'package:health_plus/screens/new_diagnosis.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: TabBar(
                      tabs: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'MY DIAGNOSIS',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                        Text(
                          'FEED',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )
                      ],
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        myDiagnosisView(context),
                        myFeedView()
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Widget myDiagnosisView(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 32.0, left: 24.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Consult a doctor',
          style: TextStyle(
              color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Talk to a healthcare professional',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        Text(
          'right from your phone.',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 42.0),
          child: Center(
            child: Text(
              'No cases',
              style: TextStyle(
                  color: Color.fromRGBO(193, 193, 193, 100), fontSize: 18),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewDiagnosis()));
                      },
                    ),
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

Widget myFeedView() {
  return ListView(
    children: <Widget>[
      awarenessFeed(),
      awarenessFeed(),
      awarenessFeed(),
      awarenessFeed(),
      awarenessFeed(),
    ],
  );
}

Widget awarenessFeed(){
  return Image.asset('images/feedview_image.png');
}
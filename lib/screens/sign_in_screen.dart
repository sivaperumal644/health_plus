import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:health_plus/appstate.dart';
import 'package:health_plus/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
        builder: (_) => AppState(), child: MaterialApp(home: SignIn()));
  }
}

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child:
                SvgPicture.asset('images/app_logo.svg', width: 80, height: 80),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 32),
            child: Text('Health+',
                style: TextStyle(
                    color: Color.fromRGBO(0, 133, 255, 1), fontSize: 43)),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Scaffold(
                    appBar: TabBar(
                      indicatorColor: Color.fromRGBO(0, 133, 255, 1),
                      tabs: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'User',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Doctor',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        loginPage('Login as user', context),
                        loginPage('Login as Doctor', context)
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget loginPage(msg, context) {
  return ListView(
    shrinkWrap: true,
    children: <Widget>[
      Container(
        height: 380,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Text(
                msg,
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 25, 45, 5),
              child: TextField(
                decoration:
                    InputDecoration(hintText: "Email Address/Phone Number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 10, 45, 5),
              child: TextField(
                decoration: InputDecoration(hintText: "Password"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 45),
                  child: RaisedButton(
                    color: Color.fromRGBO(0, 133, 255, 1),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      'sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 133, 255, 1),
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

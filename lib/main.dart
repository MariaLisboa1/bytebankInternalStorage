import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(BytebankApp(contactDao: ContactDao(),));
}

class BytebankApp extends StatelessWidget {
  final ContactDao contactDao;

  BytebankApp({@required this.contactDao});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: Dashboard(contactDao: contactDao),

    );
  }
}

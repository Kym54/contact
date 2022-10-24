import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color(0xff007e33),
          actions: <Widget>[
            IconButton(onPressed: null, icon: Icon(Icons.verified_user, color: Colors.blue,))
          ],
          title: Text('Contacts',
            textDirection: TextDirection.ltr,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600
              )
            ),
          ),
        ),
        body: new Column(
          children: [
            new Container(
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))
                  ),
                  prefix: Icon(Icons.search),
                  labelText: 'Search'
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

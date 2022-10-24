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

  var items = <String>[];

  // creating our list


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
        body: Column(
          children:<Widget> [
            Container(
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
                onChanged: (value){
                  // do something on trigger

                }
              ),
            ),
            Expanded(
                child:ListView.builder(
                  itemCount: items.length,
                itemBuilder: (context,index){
                    return Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyan, width: 1),
                        borderRadius: BorderRadius.circular(15.5)
                      ),
                      child: Container(
                        margin: EdgeInsets.all(7.0),
                        padding: EdgeInsets.all(7.0),
                        child: Row(
                          children: <Widget>[
                            // add an avater
                            CircleAvatar(
                              child: new Text(
                                  // text preview will be the first letter of the string
                                  '${items[index][0]}'),
                              backgroundColor: Color(0xff00695c),
                              foregroundColor: Colors.white,
                            ),
                            new Padding(padding: EdgeInsets.all(8.0)),
                            Text(
                              '${items[index]}',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                },
                )
            )
          ],
        ),
      ),
    );
  }
}

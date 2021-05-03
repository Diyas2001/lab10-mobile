import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Register Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int _value =1;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10.0,
        ),
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Icon(Icons.account_box_outlined),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder (),
                      labelText: "Name"
                  ),
                ),
                Icon(Icons.phone),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "phone number"),
                  ),
                ),
                Icon(Icons.mail),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email"),
                  ),
                ),
                Icon(Icons.flag),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("RU"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("KAZ"),
                        value: 2,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),

                Icon(Icons.security),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "password"),
                  ),
                ),
                Icon(Icons.youtube_searched_for),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "enter password"),
                  ),
                ),

                Padding(padding: EdgeInsets.only( top: 10.0,
                ),
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text("Submit"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
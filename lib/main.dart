import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi!"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.greenAccent[50],
                  filled: true,
                  icon: Icon(Icons.add),
                  prefixIcon: Icon(Icons.add),
                  prefixText: "Nama : ",
                  labelText: "Nama Lengkap",
                  hintText: "Masukan Nama Lengkap",
                  prefixStyle: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                maxLength: 5,
                onChanged: (value){
                  setState(() {
                  });
                },
                controller: controller,),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}

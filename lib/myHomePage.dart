import 'package:flutter/material.dart';

import 'drawer.dart';
import 'home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

TextEditingController _nameController = TextEditingController();//* _ Means Private
var myText = "Caption Me";
@override
  void initState(){
    super.initState();
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
      ),
     body: HomePadding(myText: myText, nameController: _nameController),
     drawer: MyDrawer(),
     floatingActionButton: FloatingActionButton(
       onPressed: () {
         myText = _nameController.text;
         setState(() {  //* Display on the webpage
           
         });
       },
       child: Icon(Icons.whatshot), 
     ),
    );
  }
}


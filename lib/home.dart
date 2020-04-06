import 'package:flutter/material.dart';

class HomePadding extends StatelessWidget {
  const HomePadding({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset("assets/nature.jpg", fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(myText, style: TextStyle(fontSize: 22, fontFamily: "Maiandra GD"),),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "I Love You...", labelText: "Quote",hintStyle: TextStyle(fontStyle: FontStyle.italic)
                  ),
                  
                ),
              )
              
              ],
          ),
          ),
      ),
    );
  }
}


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String email, name;
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter registered email id",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.blue[900],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                  focusColor: Color(0xFF000000),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Enter Email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(49.0),
                    borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(49.0),
                    borderSide: BorderSide(
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(49.0),
                    borderSide: BorderSide(
                      width: 1.5,
                    ),
                  ),
                ),
                onChanged: (String value) {
                  email = value;
                },
              ),
            ),
            Text(
              "Update your name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.blue[900],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                  focusColor: Color(0xFF000000),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Enter Name",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(49.0),
                    borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(49.0),
                    borderSide: BorderSide(
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(49.0),
                    borderSide: BorderSide(
                      width: 1.5,
                    ),
                  ),
                ),
                onChanged: (String value) {
                  name = value;
                },
              ),
            ),
            RaisedButton(
              onPressed: () {
                collectionReference.doc(email).update(
                  {
                    'username': name,
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Update",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              color: Colors.blue[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
}

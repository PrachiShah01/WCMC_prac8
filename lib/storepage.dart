import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class storepage extends StatefulWidget {
  @override
  _storepageState createState() => _storepageState();
}

class _storepageState extends State<storepage> {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('users');
  String name, email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            RaisedButton(
              onPressed: () {
                collectionReference.doc(email).set(
                  {
                    'username': name,
                    'emailid': email,
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Store",
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

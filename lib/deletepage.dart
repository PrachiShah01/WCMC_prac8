import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  @override
  _DeletePageState createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  String email;

  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter Email ID you want to delete",
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
            RaisedButton(
              onPressed: () {
                collectionReference.doc(email).delete();
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Delete",
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

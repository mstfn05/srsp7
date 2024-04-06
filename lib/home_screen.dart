import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final dbRef = FirebaseDatabase.instance.ref();
  final TextEditingController _controller = TextEditingController();

  void saveData() {
    dbRef.push().set({'data': _controller.text});
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Data Save Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter Data'),
            ),
          ),
          ElevatedButton(
            onPressed: saveData,
            child: Text('Save to Firebase'),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task/search.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          SizedBox(height: height * 0.1),
          Center(
            child: Container(
              height: height * 0.09,
              width: width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "FirstName",
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          Center(
            child: Container(
              height: height * 0.09,
              width: width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "MidName",
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          Center(
            child: Container(
              height: height * 0.09,
              width: width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "LastName",
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ));
              },
              child: Text("Save"))
        ],
      )),
    );
  }
}

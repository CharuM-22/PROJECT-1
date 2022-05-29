import 'package:flutter/material.dart';

import 'applicationForm.dart';

class NoDatasFound extends StatefulWidget {
  const NoDatasFound({Key? key}) : super(key: key);

  @override
  State<NoDatasFound> createState() => _NoDatasFoundState();
}

class _NoDatasFoundState extends State<NoDatasFound> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      child: Column(children: [
        SizedBox(
          height: height * 0.1,
        ),
        Center(
          child: Container(
            child: Text(
              "no appointment booking for this number",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Application()));
            },
            child: Text("Apply"))
      ]),
    ));
  }
}

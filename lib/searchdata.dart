import 'package:flutter/material.dart';
import 'package:task/profile.dart';

class SearchData extends StatefulWidget {
  SearchData({this.num, this.name});
  final num;
  final name;
  @override
  State<SearchData> createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(widget.num);
    print(widget.name);
    print("ggggggg");
    print(15);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(height: height * 0.1),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            Profile(num: widget.num, name: widget.name))));
              },
              child: Container(
                height: height * 0.1,
                width: width * 0.8,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: height * 0.02),
                    Text(
                      widget.name,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      "${widget.num.toString()}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        // child: Text(
        //   "${widget.num.toString()}",
        //   style: TextStyle(color: Colors.white),
        // ),
      ),
    );
  }
}

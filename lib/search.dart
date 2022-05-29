import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/searchdata.dart';

import 'nodatafound.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int mobilenum = 9384078116;
  var name = "Malathi";
  // final prefs = SharedPreferences.getInstance();

  @override
  var search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            const Center(
              child: Text(
                "Appointment Booking",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.8,
              child: TextField(
                controller: search,
                maxLength: 10,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    // border: const OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.white, width: 5.0),
                    // ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: IconButton(
                      onPressed: () {
                        mobilenum.toString() == search.text
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchData(
                                        num: search.text, name: name)))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoDatasFound()));
                      },
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      iconSize: height * 0.03,
                    )),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                mobilenum.toString() == search.text
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchData(
                                  num: search.text,
                                  name: name,
                                )))
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoDatasFound()));
              },
              child: const Text("Search"),
            )
          ],
        ),
      )),
    );
  }
}

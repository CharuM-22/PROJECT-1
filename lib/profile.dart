import 'package:flutter/material.dart';
import 'package:task/searchdata.dart';

class Profile extends StatefulWidget {
  Profile({this.num, this.name});
  final num;
  final name;
  @override
  State<Profile> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  height: height * 0.07,
                  width: width,
                  color: Colors.black,
                  child: Row(
                    children: [
                      // iconContainer(height, width, Icons.arrow_back),
                      SizedBox(
                        width: width * 0.7,
                      ),
                      iconContainer(height, width, Icons.edit),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      iconContainer(height, width, Icons.more_vert)
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Container(
                  height: height * 0.14,
                  width: width,
                  color: Colors.black,
                  child: Container(
                    width: width * 0.2,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: const FittedBox(
                        fit: BoxFit.contain,
                        child: Icon(
                          Icons.account_circle,
                          size: 10,
                          color: Colors.red,
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: height * 0.05,
                  width: width * 0.93,
                  color: Colors.black,
                  child: Text(
                    "${widget.name}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                divContainer(height, width),
                Container(
                    alignment: Alignment.centerLeft,
                    height: height * 0.07,
                    width: width * 0.93,
                    color: Colors.black,
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.15,
                        ),
                        const SizedBox(
                          child: Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        const SizedBox(
                          child: Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        const SizedBox(
                          child: Icon(
                            Icons.video_call_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                Container(
                  alignment: Alignment.topCenter,
                  color: Colors.black,
                  height: height * 0.03,
                  width: width * 0.93,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.12,
                      ),
                      numberAndMobileContainer("  Phone"),
                      SizedBox(
                        width: width * 0.16,
                      ),
                      numberAndMobileContainer("   Message"),
                      SizedBox(
                        width: width * 0.11,
                      ),
                      numberAndMobileContainer("     Video Call"),
                    ],
                  ),
                ),
                // SizedBox(height: 0.2),
                divContainer(height, width),
                Container(
                  height: height * 0.08,
                  width: width * 0.91,
                  color: Colors.black,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.06,
                        child: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: width * 0.4,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.023,
                            ),
                            numberAndMobileContainer(widget.num),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            numberAndMobileContainer("Mobile")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.2,
                      ),
                      SizedBox(
                        width: width * 0.03,
                        child: const Icon(
                          (Icons.video_call_rounded),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.08,
                      ),
                      SizedBox(
                        width: width * 0.03,
                        child: const Icon(
                          (Icons.message_outlined),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                divContainer(height, width),
              ],
            ),
          ),
        ));
  }

  Container numberAndMobileContainer(text) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 10),
      ),
    );
  }

  Container iconContainer(double height, double width, icon) {
    return Container(
      color: Colors.black,
      height: height * 0.05,
      width: width * 0.11,
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SearchData()));
        },
        child: Icon(
          (icon),
          color: Colors.white,
        ),
      ),
    );
  }

  Container divContainer(double height, double width) {
    return Container(
      height: height * 0.0004,
      width: width,
      color: Colors.grey,
    );
  }
}

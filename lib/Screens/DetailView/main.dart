import 'package:flutter/material.dart';
import 'package:made/Components/Button/main.dart';
import 'package:made/Components/Circle/main.dart';
import 'package:made/GlobalVars.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPrimaryColor,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 200,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Lost River",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.normal,
                          color: whiteColor),
                    ),
                  ))),
          Spacer(),
          Stack(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                    color: whiteColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 60, horizontal: 40),
                        child: Container(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Danger:",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Circle(
                                  width: 20,
                                  height: 20,
                                  color: dangerColor4,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Circle(
                                  width: 20,
                                  height: 20,
                                  color: dangerColor3,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Circle(
                                  width: 20,
                                  height: 20,
                                  color: dangerColor2,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Circle(
                                  width: 20,
                                  height: 20,
                                  color: dangerColor1,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Description:",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "This is a base from O.M.D.E that is very secure and nothing and noone can enter except level 10 agents.",
                                  textAlign: TextAlign.left,
                                  style:
                                      TextStyle(fontSize: 15, color: grayColor),
                                ),
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                    Spacer(),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 64,
                                width: 64,
                                child: Center(
                                  child: Icon(
                                    Icons.star,
                                    color: whiteColor,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: darkPrimaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Button(
                              onTaped: (() => print("Hello Finish")),
                              height: 64,
                              width: double.infinity,
                              background: secondaryPrimaryColor,
                              radius: 10,
                              content: Text(
                                "Finish",
                                style:
                                    TextStyle(color: whiteColor, fontSize: 30),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Positioned(
                  bottom: 20,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(color: fourthPrimaryColor)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:Testing_App/provider/dataProvider.dart';
import 'package:flutter/material.dart';
import 'package:Testing_App/constant.dart';

import 'dart:core';

import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: kAppBar,
        body: Consumer(
          builder: (BuildContext context, DataProvider provider, Widget child) {
            provider.allData();
            return provider.dataList == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        // margin: EdgeInsets.all(20),
                        child: Card(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          elevation: 2,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Card(
                                          elevation: 3,
                                          child: Text(
                                            provider.dataList[index]
                                                ["displayName"],
                                            style: TextStyle(
                                                color: Colors.pinkAccent),
                                          )),
                                    ),
                                  ],
                                ),
                                provider.dataList[index]["meta"] == null
                                    ? SizedBox(
                                        height: 10,
                                      )
                                    : SizedBox(
                                        height: 10,
                                      ),
                                Text(
                                  provider.dataList[index]["meta"] == null
                                      ? " "
                                      : provider.dataList[index]["meta"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                provider.dataList[index]["meta"] == null
                                    ? SizedBox(
                                        height: 5,
                                      )
                                    : SizedBox(
                                        height: 0,
                                      ),
                                Text(provider.dataList[index]["description"]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    itemCount: provider.dataList.length,
                  );
          },
        ));
  }
}

// ignore_for_file: unused_import, duplicate_import, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'product.dart';

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 30,
            icon: const Icon(Icons.arrow_back),
          ),
          title: Container(
            margin: const EdgeInsets.only(
              right: 30,
              top: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: double.infinity,
            height: 40,
            child: const TextField(
              decoration: InputDecoration(
                  hintText: " Busque um produto aqui ",
                  icon: Icon(Icons.search)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton.icon(
                  onPressed: (() {
                    // nothing
                  }),
                  icon: const Icon(Icons.dataset),
                  label: const Text(
                    "123456",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 230, 231, 231),
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
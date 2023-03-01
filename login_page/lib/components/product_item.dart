// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, file_names

import 'package:flutter/material.dart';

import '../pages/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.urlImage});

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      color: Colors.white,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Produto();
              }));
            },
            child: Container(
              width: 180,
              height: 150,
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    child: Image.network(
                      fit: BoxFit.cover,
                      urlImage,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    child: Text(
                      'QTD: 35',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            'Teclado Gamer',
          ),
        ],
      ),
    );
  }
}
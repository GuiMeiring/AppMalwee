// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../components/devolutionBtn.dart';

class DevolutionPage extends StatelessWidget {
  const DevolutionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5680D3),
          leading: IconButton(
          iconSize: 30,
            onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text('Devolver item'),
            centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff5680D3)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.network(
                'https://www.logitechstore.com.br/media/catalog/product/cache/1/image/634x545/9df78eab33525d08d6e5fb8d27136e95/p/r/pro-wireless.png',
                  width: double.infinity,
                  height: 250,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 300),
              child: const Text(
                'Mouse Logitech',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
           Container(
             margin: const EdgeInsets.all(10),
             alignment: Alignment.centerLeft,
             decoration: BoxDecoration(
               color: Color(0xffF6F6F6),
               border: Border.all(
                 color: Color(0xff5680D3),
                 width: 1
               ),
               borderRadius: BorderRadius.circular(5),
               boxShadow: [
                 BoxShadow(
                   color:Colors.black26,
                   blurRadius: 2,
                   offset: Offset(0, 1)
                 )
               ]
             ),
             height: 150,
             width: double.infinity,
             child: TextField(
               keyboardType: TextInputType.multiline,
               minLines: 1,
               maxLines: 5,
               style: TextStyle(
                 color:Colors.black87
               ),
               decoration: InputDecoration(
                 hintStyle: TextStyle(fontSize: 17),
                 hintText: 'Obs sobre a devolução*',
                 border: InputBorder.none,
                 contentPadding:EdgeInsets.all(20),
                 suffixIcon: Icon(
                   Icons.emoji_objects,
                   color: Color(0xff5680D3),
                 )
               ),
             ),
             ),
            const Expanded(child: SizedBox()),
            DevolutionButton(),
          ],
        ),
      )
    );
  }
}
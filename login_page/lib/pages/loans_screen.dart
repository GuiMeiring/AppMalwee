import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login_page/pages/formulario_emprestar_item.dart';

import 'loans_information_screen.dart';
import 'loans_information_screen_v3.dart';
import 'loans_information_v2.dart';

class LoansScreen extends StatefulWidget {
  const LoansScreen({super.key});

  @override
  State<LoansScreen> createState() => LoansScreenOne();
}

class LoansScreenOne extends State<LoansScreen> {
  String serch = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(211, 88, 160, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 30,
          icon: const Icon(Icons.arrow_back),
        ),
        title: Container(
          margin: const EdgeInsets.only(right: 30, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.infinity,
          height: 40,
          child: const TextField(
            decoration: InputDecoration(
                hintText: 'Pesquise um Produto', icon: Icon(Icons.search)),
            textAlign: TextAlign.center,
            // onChanged: (text) {
            //   serch = text;
            // },
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 125, 196, 253)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.00),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 65))),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormularioEmprestimoPage();
                }));
              },
              child: const Text(
                '+  Adicionar um novo Empréstimo',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoansScreenInformation();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                  color: const Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(0, 3), // Shifts the shadow downwards
                      blurRadius: 0, // Prevents shadow from being blurred
                      spreadRadius: 0, // Prevents shadow from being spread
                    ),
                  ]),
              child: Row(
                children: [
                  Image.network(
                    'https://resource.logitech.com/content/dam/logitech/en/products/keyboards/mx-keys/gallery/us-mx-keys-gallery-graphite-front.png',
                    height: 150,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Empréstimo n° 6923 \n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Teclado Logitech \n'),
                      Text('Emprestado por: JA289074'),
                      Text('Data de saída: 22/02/2023')
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoansScreenTwo();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                  color: const Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(0, 3), // Shifts the shadow downwards
                      blurRadius: 0, // Prevents shadow from being blurred
                      spreadRadius: 0, // Prevents shadow from being spread
                    ),
                  ]),
              child: Row(
                children: [
                  Image.network(
                    'https://www.logitechstore.com.br/media/catalog/product/cache/1/image/634x545/9df78eab33525d08d6e5fb8d27136e95/p/r/pro-wireless.png',
                    height: 150,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Empréstimo n° 1552 \n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Mouse Logitech \n'),
                      Text('Emprestado por: JA54176'),
                      Text('Data de saída: 22/02/82023')
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoansScreenThree();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                  color: const Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(0, 3), // Shifts the shadow downwards
                      blurRadius: 0, // Prevents shadow from being blurred
                      spreadRadius: 0, // Prevents shadow from being spread
                    ),
                  ]),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Empréstimo n° 0534  \n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Fone Gamer \n'),
                      Text('Emprestado por: JA61941'),
                      Text('Data de saída: 22/02/82023')
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

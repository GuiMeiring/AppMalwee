// ignore_for_file: unused_import, file_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login_page/pages/item.dart';
import 'package:login_page/pages/low_page.dart';
import '../components/product_item.dart';
import 'product.dart';

class Produto extends StatelessWidget {
  const Produto({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
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
                hintText: 'Busque um produto aqui', icon: Icon(Icons.search)),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10)),
            child: Image.network(
                'https://images.tcdn.com.br/img/img_prod/996126/teclado_gamer_mecanico_redragon_shrapnel_rgb_ingles_preto_323_1_19672e319db3997400357eb86db0bdb6.png'),
            width: double.infinity,
            height: 250,
          ),
          const Text(
            'Teclado Ultra Maneiro',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Quantidade: 35/70 disponiveis',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return Item();
              })));
            },
            child: Container(
              margin: EdgeInsets.only(top: 25, left: 10, right: 10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blue)),
              child: Center(
                  child: Text(
                'VISUALIZAR ITENS',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              )),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: ElevatedButton.icon(
                  onPressed: () {
                    // do something
                  },
                  icon: const Icon(Icons.file_open),
                  label: const Text(
                    'Clique para visualizar as NFs',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 230, 231, 231)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ))),
          Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.blue)),
            child: Center(
                child: Text(
              'Adicionar novos itens ',
              style: TextStyle(fontSize: 25, color: Colors.blue),
            )),
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(5)),
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LowPage();
                    }));
                    // do something
                  },
                  icon: const Icon(Icons.delete),
                  label: const Text(
                    'Dar baixa',
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 230, 231, 231)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ))),
        ],
      ),
    ));
  }
}

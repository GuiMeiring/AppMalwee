// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login_page/pages/formulario_item.dart';

import '../components/loginBtn.dart';
import '../components/product_item.dart';

class Estoque extends StatelessWidget {
  const Estoque({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Teste'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        children: <Widget>[
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
                  return FormularioItem();
                }));
              },
              child: const Text(
                '+  Adicionar um novo Item',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ProductItem(
            urlImage:
                'https://sangkee.mx/wp-content/uploads/2021/10/mouse1-1-min.png',
          ),
          ProductItem(
            urlImage:
                'https://images.tcdn.com.br/img/img_prod/996126/teclado_gamer_mecanico_redragon_shrapnel_rgb_ingles_preto_323_1_19672e319db3997400357eb86db0bdb6.png',
          ),
          ProductItem(
            urlImage:
                'https://sangkee.mx/wp-content/uploads/2021/10/mouse1-1-min.png',
          ),
          ProductItem(
            urlImage:
                'https://images.tcdn.com.br/img/img_prod/996126/teclado_gamer_mecanico_redragon_shrapnel_rgb_ingles_preto_323_1_19672e319db3997400357eb86db0bdb6.png',
          ),
          ProductItem(
            urlImage:
                'https://sangkee.mx/wp-content/uploads/2021/10/mouse1-1-min.png',
          ),
          ProductItem(
            urlImage:
                'https://images.tcdn.com.br/img/img_prod/996126/teclado_gamer_mecanico_redragon_shrapnel_rgb_ingles_preto_323_1_19672e319db3997400357eb86db0bdb6.png',
          ),
          ProductItem(
            urlImage:
                'https://sangkee.mx/wp-content/uploads/2021/10/mouse1-1-min.png',
          ),
          ProductItem(
            urlImage:
                'https://images.tcdn.com.br/img/img_prod/996126/teclado_gamer_mecanico_redragon_shrapnel_rgb_ingles_preto_323_1_19672e319db3997400357eb86db0bdb6.png',
          ),
          ProductItem(
            urlImage:
                'https://sangkee.mx/wp-content/uploads/2021/10/mouse1-1-min.png',
          ),
          ProductItem(
            urlImage:
                'https://images.tcdn.com.br/img/img_prod/996126/teclado_gamer_mecanico_redragon_shrapnel_rgb_ingles_preto_323_1_19672e319db3997400357eb86db0bdb6.png',
          ),
          ProductItem(
            urlImage:
                'https://w7.pngwing.com/pngs/544/438/png-transparent-silver-imac-macintosh-macbook-pro-apple-thunderbolt-display-computer-monitor-monitor-television-electronics-computer.png',
          ),
          ProductItem(
            urlImage:
                'https://w7.pngwing.com/pngs/544/438/png-transparent-silver-imac-macintosh-macbook-pro-apple-thunderbolt-display-computer-monitor-monitor-television-electronics-computer.png',
          ),
        ],
      ),
    );
  }
}
